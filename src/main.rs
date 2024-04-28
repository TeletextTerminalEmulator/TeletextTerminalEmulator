#![no_std]
#![no_main]

extern crate alloc;

mod character_set;
mod error;
mod teletext;
mod teletext_interface;
mod teletext_terminal;
mod ps2;

use crate::teletext::{Teletext, TeletextDimensions};
use crate::teletext_terminal::TeletextTerminalListener;
use alacritty_terminal::sync::FairMutex;
use alacritty_terminal::term::Config;
use alacritty_terminal::vte::ansi;
use alacritty_terminal::Term;
use alloc::rc::Rc;
use pc_keyboard::{DecodedKey, KeyboardLayout};
use ps2::PS2;
use core::cell::RefCell;
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
    TerminalUart: litex_basys3_pac::TERMINAL_UART,
}

litex_hal::timer! {
    Timer: litex_basys3_pac::TIMER0,
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

pub(crate) use lock_uart;
pub(crate) use lock_debug_uart;

enum Event {
    UartReceived(u8),
    KeyboardEvent(DecodedKey),
    Redraw,
}

fn wait_for_event<T: KeyboardLayout>(ps2: &mut PS2<T>) -> nb::Result<Event, Infallible> {
    // TODO: Does this drop the lock?
    let read_byte = lock_uart!().read();

    match read_byte {
        Ok(byte) => Ok(Event::UartReceived(byte)),
        Err(nb::Error::WouldBlock) => {
            match ps2.try_read() {
                Some(data) => Ok(Event::KeyboardEvent(data)),
                None => {
                    if !TELETEXT_VALID.load(Ordering::Relaxed) {
                        Ok(Event::Redraw)
                    } else {
                        Err(nb::Error::WouldBlock)
                    }
                },
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

    let debug_uart = Uart::new(peripherals.UART);
    let terminal_uart = TerminalUart::new(peripherals.TERMINAL_UART);
    let mut ps2 = ps2::PS2::new(peripherals.PS2, pc_keyboard::layouts::De105Key);

    *DEBUG_UART.lock_unfair() = Some(debug_uart);
    *TERMINAL_UART.lock_unfair() = Some(terminal_uart);

    let teletext = Rc::new(RefCell::new(unsafe { Teletext::new_raw() }));
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
        match block!(wait_for_event(&mut ps2)).expect("Infallible") {
            Event::UartReceived(byte) => {
                let _ = lock_debug_uart!().write(byte); // Just try to write, ignore if e.g. buffer is full
                parser.advance(&mut term, byte);
                TELETEXT_VALID.store(false, Ordering::Relaxed);
            }
            Event::KeyboardEvent(key) => {
                // TODO check term modes for different reporting modes

                match key {
                    DecodedKey::RawKey(keycode) => {
                        writeln!(lock_debug_uart!(), "Could not convert {keycode:?} to unicode").unwrap();
                    },
                    DecodedKey::Unicode(c) => lock_uart!().write_char(c).unwrap(),
                }
            }
            Event::Redraw => {
                let mut teletext = teletext.borrow_mut();

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
                term.reset_damage();
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
