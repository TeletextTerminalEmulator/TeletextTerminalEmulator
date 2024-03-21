#![no_std]
#![no_main]

extern crate alloc;

mod character_set;
mod error;
mod teletext;
mod teletext_interface;
mod teletext_terminal;

use crate::teletext::{Teletext, TeletextDimensions};
use crate::teletext_terminal::TeletextTerminalListener;
use alacritty_terminal::sync::FairMutex;
use alacritty_terminal::term::Config;
use alacritty_terminal::vte::ansi;
use alacritty_terminal::Term;
use alloc::rc::Rc;
use core::convert::Infallible;
use core::fmt::Write;
use core::panic::PanicInfo;
use embedded_alloc::Heap;
use litex_basys3_pac::{riscv_rt::entry, Peripherals};
use litex_hal::nb::{self, block};
use litex_hal::prelude::*;
use portable_atomic::{AtomicBool, Ordering};
use teletext_terminal::LitexTimeout;

#[cfg(feature = "backtrace")]
use mini_backtrace::Backtrace;

litex_hal::uart! {
    Uart: litex_basys3_pac::UART,
}

litex_hal::timer! {
    Timer: litex_basys3_pac::TIMER0,
}

const SYSTEM_CLOCK_FREQUENCY: u32 = 100_000_000;

#[global_allocator]
static HEAP: Heap = Heap::empty();

pub static TELETEXT_VALID: AtomicBool = AtomicBool::new(false);

pub static DEBUG_UART: FairMutex<Option<Uart>> = FairMutex::new(None);

macro_rules! lock_debug_uart {
    () => {
        $crate::DEBUG_UART
            .lock_unfair()
            .as_mut()
            .expect("The DEBUG UART interface should have been initialized!")
    };
}

macro_rules! lock_uart {
    () => {
        // TODO: Replace with seperate interface?
        $crate::DEBUG_UART
            .lock()
            .as_mut()
            .expect("The UART interface should have been initialized!")
    };
}

pub(crate) use lock_uart;

enum Event {
    UartReceived(u8),
    Redraw,
}

fn wait_for_event() -> nb::Result<Event, Infallible> {
    match lock_uart!().read() {
        Ok(byte) => Ok(Event::UartReceived(byte)),
        Err(nb::Error::WouldBlock) => {
            if TELETEXT_VALID.load(Ordering::Relaxed) {
                Err(nb::Error::WouldBlock)
            } else {
                Ok(Event::Redraw)
            }
        }
        Err(err) => Err(err),
    }
}

#[entry]
fn main() -> ! {
    {
        use core::mem::MaybeUninit;
        const HEAP_SIZE: usize = litex_basys3_pac::mem_map::SRAM_LENGTH - 4096; // -4 KiB
        static mut HEAP_MEM: [MaybeUninit<u8>; HEAP_SIZE] = [MaybeUninit::uninit(); HEAP_SIZE];
        unsafe { HEAP.init(HEAP_MEM.as_ptr() as usize, HEAP_SIZE) }
    }

    let peripherals = Peripherals::take().unwrap();
    let uart = Uart::new(peripherals.UART);

    *DEBUG_UART.lock_unfair() = Some(uart);

    let teletext = Rc::new(unsafe { Teletext::new_raw() });
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
        match block!(wait_for_event()).expect("Infallible") {
            Event::UartReceived(byte) => parser.advance(&mut term, byte),
            Event::Redraw => {
                for cell in term.grid().display_iter() {
                    teletext
                        .set_char(
                            cell.c,
                            cell.point.line.0 as u8 + 1,
                            cell.point.column.0 as u8,
                        )
                        .or_else(|_| {
                            teletext.set_char(
                                '?',
                                cell.point.line.0 as u8 + 1,
                                cell.point.column.0 as u8,
                            )
                        })
                        .unwrap();
                }
                TELETEXT_VALID.store(true, Ordering::Relaxed);
            }
        }
    }
}

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    writeln!(lock_debug_uart!(), "Panic!").unwrap();
    writeln!(lock_debug_uart!(), "{}", info).unwrap();
    
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
