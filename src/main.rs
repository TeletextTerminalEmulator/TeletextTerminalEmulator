#![no_std]
#![no_main]

mod teletext;
use teletext::TeletextInterface;

use core::fmt::Write;
use litex_hal::prelude::*;
use litex_basys3_pac::{riscv_rt::entry, Peripherals, mem_map};
use panic_halt as _;
use crate::teletext::TeletextChar;

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
    let teletext_interface =
        unsafe { teletext::RawTeletextInterface::new(mem_map::TELETEXT_ORIGIN) };
    writeln!(uart, "Peripherals initialized").unwrap();

    let mut timer = Timer::new(peripherals.TIMER0, SYSTEM_CLOCK_FREQUENCY);
    let mut uptime:u32 = 0;
    loop {
        timer.delay_ms(1000_u32);
        uptime += 1;
        teletext_interface.write_char(TeletextChar(((uptime % 0x60) as u8) + 0x20), 0, 5);
        writeln!(uart, "Uptime: {} seconds", uptime).unwrap();
    }
}