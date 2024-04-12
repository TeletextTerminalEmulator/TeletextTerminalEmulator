use pc_keyboard::{DecodedKey, EventDecoder, KeyboardLayout, ScancodeSet, ScancodeSet2};
use core::fmt::Write;

use crate::lock_debug_uart;

pub struct PS2<T: KeyboardLayout> {
    interface: litex_basys3_pac::PS2,
    scancode_set: ScancodeSet2,
    event_decoder: EventDecoder<T>
}

impl<T: KeyboardLayout> PS2<T> {

    pub fn new(interface: litex_basys3_pac::PS2, layout: T) -> Self {
        Self { interface, scancode_set: ScancodeSet2::new(), event_decoder: EventDecoder::new(layout, pc_keyboard::HandleControl::Ignore) }
    }

    pub fn try_read(&mut self) -> Option<DecodedKey> {
        while self.interface.data_available().read().data_available().bit_is_set() {
            let scancode = self.interface.scancode().read().scancode().bits();

            writeln!(lock_debug_uart!(), "Scancode receive: {scancode}, 0x{scancode:X}").unwrap();

            if let Some(event) = self.scancode_set.advance_state(scancode).expect("Interface should always output valid scancodes") {
                if let Some(decoded_key) = self.event_decoder.process_keyevent(event) {
                    return Some(decoded_key);
                }
            }
        }

        None
    }
}