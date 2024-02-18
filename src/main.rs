#![no_std]
#![no_main]

extern crate alloc;

mod teletext_interface;
mod teletext;
mod character_set;
mod error;
mod teletext_terminal;

use core::fmt::Write;
use core::panic::PanicInfo;
use alacritty_terminal::sync::FairMutex;
use litex_hal::nb::block;
use litex_hal::prelude::*;
use litex_basys3_pac::{riscv_rt::entry, Peripherals};
use crate::teletext::{Teletext, TeletextDimensions};
//#[allow(unused_imports)]
//use panic_halt as _;
use embedded_alloc::Heap;
use alacritty_terminal::Term;
use alacritty_terminal::term::Config;
use alacritty_terminal::vte::ansi::Handler;
use crate::teletext_terminal::TeletextTerminalListener;

litex_hal::uart! {
    Uart: litex_basys3_pac::UART,
}

litex_hal::timer! {
    Timer: litex_basys3_pac::TIMER0,
}

const SYSTEM_CLOCK_FREQUENCY: u32 = 100_000_000;

#[global_allocator]
static HEAP: Heap = Heap::empty();

static UART: FairMutex<Option<Uart>> = FairMutex::new(None);

macro_rules! lock_uart {
    () => {
        UART.lock().as_mut().expect("The UART interface should have been initialized!")
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

    *UART.lock_unfair() = Some(uart);

    let teletext = unsafe { Teletext::new_raw() };
    writeln!(lock_uart!(), "Peripherals initialized").unwrap();

    let term_config = Config::default();

    let _term = Term::new(term_config, &TeletextDimensions, TeletextTerminalListener);

    
    for (col, ch) in "Hallo Welt!".chars().enumerate() {
        teletext.set_char(ch, 7, col as u8).expect("Values should be fine");
    }
    loop {
        let ch = block!(lock_uart!().read()).expect("Infallible");

        teletext.set_char(ch as char, 8, 0).or_else( |error| {
                teletext.set_char('?', 8, 0)
            }
        ).expect("Should be handled");
        block!(lock_uart!().write(ch)).expect("Infallible");
    }

}

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    writeln!(lock_uart!(), "{}", info).unwrap();
    loop {}
}