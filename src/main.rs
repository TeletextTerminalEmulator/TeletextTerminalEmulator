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
use teletext_terminal::LitexTimeout;
use core::fmt::Write;
use core::panic::PanicInfo;
use embedded_alloc::Heap;
use litex_basys3_pac::{riscv_rt::entry, Peripherals};
use litex_hal::nb::block;
use litex_hal::prelude::*;

litex_hal::uart! {
    Uart: litex_basys3_pac::UART,
}

litex_hal::timer! {
    Timer: litex_basys3_pac::TIMER0,
}

const SYSTEM_CLOCK_FREQUENCY: u32 = 100_000_000;

#[global_allocator]
static HEAP: Heap = Heap::empty();

pub static DEBUG_UART: FairMutex<Option<Uart>> = FairMutex::new(None);

macro_rules! lock_debug_uart {
    () => {
        DEBUG_UART
            .lock_unfair()
            .as_mut()
            .expect("The DEBUG UART interface should have been initialized!")
    };
}

macro_rules! lock_uart {
    () => {
        // TODO: Replace with seperate interface?
        DEBUG_UART
            .lock()
            .as_mut()
            .expect("The UART interface should have been initialized!")
    };
}

#[entry]
fn main() -> ! {
    {
        use core::mem::MaybeUninit;
        const HEAP_SIZE: usize = 1024;
        static mut HEAP_MEM: [MaybeUninit<u8>; HEAP_SIZE] = [MaybeUninit::uninit(); HEAP_SIZE];
        unsafe { HEAP.init(HEAP_MEM.as_ptr() as usize, HEAP_SIZE) }
    }

    let peripherals = Peripherals::take().unwrap();
    let uart = Uart::new(peripherals.UART);

    *DEBUG_UART.lock_unfair() = Some(uart);

    let teletext = unsafe { Teletext::new_raw() };
    writeln!(lock_debug_uart!(), "Peripherals initialized").unwrap();

    let term_config = Config::default();

    let mut term = Term::new(
        term_config,
        &TeletextDimensions,
        TeletextTerminalListener(teletext),
    );

    let mut parser = ansi::Processor::<LitexTimeout>::default();

    loop {
        let input = block!(lock_uart!().read()).expect("Infallible");
        parser.advance(&mut term, input);
    }
}

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    writeln!(lock_debug_uart!(), "{}", info).unwrap();
    loop {}
}
