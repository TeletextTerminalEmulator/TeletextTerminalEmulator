#![no_std]
#![no_main]

mod teletext_interface;
mod teletext;
mod character_set;
mod error;

use core::fmt::Write;
use litex_hal::nb::block;
use litex_hal::prelude::*;
use litex_basys3_pac::{riscv_rt::entry, Peripherals};
use crate::teletext::Teletext;
#[allow(unused_imports)]
use panic_halt as _;

litex_hal::uart! {
    Uart: litex_basys3_pac::UART,
}

litex_hal::timer! {
    Timer: litex_basys3_pac::TIMER0,
}

const SYSTEM_CLOCK_FREQUENCY: u32 = 100_000_000;

#[entry]
fn main() -> ! {
    let peripherals = Peripherals::take().unwrap();
    let mut uart = Uart::new(peripherals.UART);
    let teletext = unsafe { Teletext::new_raw() };
    writeln!(uart, "Peripherals initialized").unwrap();
    
    for (col, ch) in "Hallo Welt!".chars().enumerate() {
        teletext.set_char(ch, 7, col as u8).expect("Values should be fine");
    }
    loop {
        let ch = block!(uart.read()).expect("Infallible");

        teletext.set_char(ch as char, 8, 0).or_else( |error| {
                teletext.set_char('?', 8, 0)
            }
        ).expect("Should be handled");
        block!(uart.write(ch)).expect("Infallible");
    }

}