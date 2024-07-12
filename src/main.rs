#![no_std]
#![no_main]

extern crate alloc;

mod character_set;
mod error;
mod ps2;
mod teletext;

use crate::ps2::convert_term_mode;
use crate::teletext::terminal::TeletextTerminalListener;
use crate::teletext::{Teletext, TeletextDimensions};
use alacritty_terminal::sync::FairMutex;
use alacritty_terminal::term::Config;
use alacritty_terminal::vte::ansi;
use alacritty_terminal::Term;
use alloc::rc::Rc;
use core::cell::RefCell;
use core::convert::Infallible;
use core::fmt::Write;
use core::panic::PanicInfo;
use embedded_alloc::Heap;
use litex_basys3_pac::{riscv_rt::entry, Peripherals, mem_map};
use litex_hal::nb::{self, block};
use litex_hal::prelude::*;
use pc_keyboard::KeyboardLayout;
use portable_atomic::{AtomicBool, Ordering};
use ps2::PS2;
use teletext::terminal::LitexTimeout;
use vte_input::generate_sequence;

#[cfg(feature = "backtrace")]
use mini_backtrace::Backtrace;

litex_hal::uart! {
    Uart: litex_basys3_pac::Uart,
    TerminalUart: litex_basys3_pac::TerminalUart,
}

litex_hal::timer! {
    Timer: litex_basys3_pac::Timer0,
}

#[allow(dead_code)]
const SYSTEM_CLOCK_FREQUENCY: u32 = 100_000_000;

#[global_allocator]
static HEAP: Heap = Heap::empty();

pub static TELETEXT_VALID: AtomicBool = AtomicBool::new(false);

pub static DEBUG_UART: FairMutex<Option<Uart>> = FairMutex::new(None);

pub static TERMINAL_UART: FairMutex<Option<TerminalUart>> = FairMutex::new(None);

macro_rules! lock_debug_uart {
    () => {
        $crate::DEBUG_UART
            .lock_unfair()
            .as_mut()
            .expect("The DEBUG UART interface should have been initialized!")
    };
}

#[cfg(feature = "terminal_uart")]
use TERMINAL_UART as UART;

#[cfg(not(feature = "terminal_uart"))]
use DEBUG_UART as UART;

macro_rules! lock_uart {
    () => {
        $crate::UART
            .lock()
            .as_mut()
            .expect("The UART interface should have been initialized!")
    };
}

pub(crate) use lock_debug_uart;
pub(crate) use lock_uart;

enum Event {
    UartReceived(u8),
    Keyboard(ps2::KeyEventContext),
    RedrawPage,
    UpdatePage,
}

fn wait_for_event<T: KeyboardLayout>(
    ps2: &mut PS2<T>,
    tele: &Rc<RefCell<Teletext>>,
) -> nb::Result<Event, Infallible> {
    let read_byte = lock_uart!().read();

    read_byte
        .map(Event::UartReceived)
        .or_else(|_| {
            ps2.try_read()
                .map(Event::Keyboard)
                .ok_or(nb::Error::<Infallible>::WouldBlock)
        })
        .or_else(|_| {
            tele.borrow().get_frame_finished().then_some(Event::UpdatePage).ok_or(nb::Error::<Infallible>::WouldBlock)
        })
        .or_else(|_| {
            (!TELETEXT_VALID.load(Ordering::Relaxed))
                .then_some(Event::RedrawPage)
                .ok_or(nb::Error::<Infallible>::WouldBlock)
        })
}

#[entry]
fn main() -> ! {
    {
        use core::mem::MaybeUninit;
        const HEAP_SIZE: usize = mem_map::SRAM_LENGTH - 4096; // -4 KiB
        static mut HEAP_MEM: [MaybeUninit<u8>; HEAP_SIZE] = [MaybeUninit::uninit(); HEAP_SIZE];
        unsafe { HEAP.init(HEAP_MEM.as_ptr() as usize, HEAP_SIZE) }
    }

    let peripherals = Peripherals::take().unwrap();

    let debug_uart = Uart::new(peripherals.uart);
    let terminal_uart = TerminalUart::new(peripherals.terminal_uart);
    let mut ps2 = ps2::PS2::new(peripherals.ps2, pc_keyboard::layouts::De105Key);

    *DEBUG_UART.lock_unfair() = Some(debug_uart);
    *TERMINAL_UART.lock_unfair() = Some(terminal_uart);

    let teletext = Rc::new(RefCell::new(Teletext::new(peripherals.teletext)));
    writeln!(lock_debug_uart!(), "Peripherals initialized").unwrap();

    #[cfg(feature = "backtrace")]
    {
        writeln!(lock_debug_uart!(), "Backtrace:").unwrap();
        let bt = Backtrace::<16>::capture();
        for frame in bt.frames {
            writeln!(lock_debug_uart!(), "  {:#x}", frame).unwrap();
        }
        if bt.frames_omitted {
            writeln!(lock_debug_uart!(), " ... <frames omitted>").unwrap();
        }
    }

    let term_config = Config {
        scrolling_history: 0,
        ..Default::default()
    };

    let mut term = Term::new(
        term_config,
        &TeletextDimensions,
        TeletextTerminalListener(teletext.clone()),
    );

    let mut parser = ansi::Processor::<LitexTimeout>::default();

    writeln!(lock_debug_uart!(), "Starting event loop").unwrap();

    loop {
        match block!(wait_for_event(&mut ps2, &teletext)).expect("Infallible") {
            Event::UartReceived(byte) => {
                parser.advance(&mut term, byte);
                TELETEXT_VALID.store(false, Ordering::Relaxed);
            }
            Event::Keyboard(context) => {
                write!(
                    lock_uart!(),
                    "{}",
                    generate_sequence(convert_term_mode(term.mode()), &context)
                )
                .unwrap();
            }
            Event::RedrawPage => {
                let before = litex_basys3_pac::riscv::register::cycle::read();

                teletext
                    .borrow_mut()
                    .write_page(&mut term.renderable_content())
                    .expect("Wrong parameters for the grid");

                let duration = litex_basys3_pac::riscv::register::cycle::read() - before;

                writeln!(lock_debug_uart!(), "\nRedraw took {duration} cycles").unwrap();

                TELETEXT_VALID.store(true, Ordering::Relaxed);
                term.reset_damage();
            }
            Event::UpdatePage => {
                teletext.borrow_mut().update_page();
            }
        }
    }
}

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    writeln!(lock_debug_uart!(), "Panic!").unwrap();
    writeln!(lock_debug_uart!(), "{}", info).unwrap();

    writeln!(
        lock_debug_uart!(),
        "Memory usage: {}. Memory free: {}",
        HEAP.used(),
        HEAP.free()
    )
    .unwrap();

    #[cfg(feature = "backtrace")]
    {
        writeln!(lock_debug_uart!(), "Backtrace:").unwrap();
        let bt = Backtrace::<16>::capture();
        for frame in bt.frames {
            writeln!(lock_debug_uart!(), "  {:#x}", frame).unwrap();
        }
        if bt.frames_omitted {
            writeln!(lock_debug_uart!(), " ... <frames omitted>").unwrap();
        }
    }
    loop {}
}
