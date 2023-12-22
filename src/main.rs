#![no_std]
#![no_main]

mod teletext_interface;
mod teletext;
mod character_set;
mod error;

use core::fmt::Write;
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

    let mut timer = Timer::new(peripherals.TIMER0, SYSTEM_CLOCK_FREQUENCY);
    let mut uptime: u32 = 0;
    loop {
        timer.delay_ms(1000_u32);
        uptime += 1;
        //teletext.set_char((((uptime % 0x60) as u8) + 0x20) as char, 0, 5);
        writeln!(uart, "Uptime: {} seconds", uptime).unwrap();
    }
}