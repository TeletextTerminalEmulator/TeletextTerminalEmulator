#![no_std]
#![no_main]
#![warn(clippy::missing_docs_in_private_items)]

//! This program establishes communication between a teletext-interface, a keyboard and an uart interface.

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
use litex_basys3_pac::{mem_map, riscv_rt::entry, Peripherals};
use litex_hal::nb::{self, block};
use litex_hal::prelude::*;
use pc_keyboard::KeyboardLayout;
use portable_atomic::{AtomicBool, Ordering};
use ps2::PS2;
use teletext::terminal::LitexTimeout;
use vte_input::generate_sequence;

#[cfg(feature = "backtrace")]
use mini_backtrace::Backtrace;

// Uart Interface declaration
//#[allow(clippy::missing_docs_in_private_items)]
litex_hal::uart! {
    // Uart Interface that is used to print debug messages
    Uart: litex_basys3_pac::Uart,
    // Uart Interface that is used for communicating with the Teletext Display
    TerminalUart: litex_basys3_pac::TerminalUart,
}

/// Global heap
#[global_allocator]
static HEAP: Heap = Heap::empty();

/// Controls if the teletext needs to be redrawn
pub static TELETEXT_VALID: AtomicBool = AtomicBool::new(false);

/// Holds access to the debug uart interface, that is used to send debug messages
pub static DEBUG_UART: FairMutex<Option<Uart>> = FairMutex::new(None);

/// Holds access to the uart interface, that is used for the terminal display
pub static TERMINAL_UART: FairMutex<Option<TerminalUart>> = FairMutex::new(None);

/// Controls the Mutex of the debug uart interface
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

/// Controls the Mutex of the terminal display uart interface
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

/// Contains all Event types that occur during execution
enum Event {
    /// Is called if a new byte is received through the terminal display uart interface
    UartReceived(u8),
    /// Is called if a key on the keyboard is pressed
    Keyboard(ps2::KeyEventContext),
    /// Is called if the terminal buffer (encoded in UTF-8) needs to be converted into teletext chars
    RedrawPage,
    /// Is called to render the newly generated teletext buffer
    UpdatePage,
}

/// Event encoder, listens for the conditions of each possible Event and dispatches the Event
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
            tele.borrow()
                .get_frame_finished()
                .then_some(Event::UpdatePage)
                .ok_or(nb::Error::<Infallible>::WouldBlock)
        })
        .or_else(|_| {
            (!TELETEXT_VALID.load(Ordering::Relaxed))
                .then_some(Event::RedrawPage)
                .ok_or(nb::Error::<Infallible>::WouldBlock)
        })
}

/// Main function of the firmware. It initializes all needed Interfaces and launches the control-loops
#[entry]
fn main() -> ! {
    {
        use core::mem::MaybeUninit;

        /// Size of the global heap
        const HEAP_SIZE: usize = mem_map::SRAM_LENGTH - 4096; // -4 KiB

        /// Memory area of the global heap
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

/// The Panic handler gets called when an unrecoverable exception is thrown
/// When called it prints a backtrace onto the debug uart interface
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
