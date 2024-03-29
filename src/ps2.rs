use alloc::{format, vec::Vec};

#[derive(Debug)]
pub struct PS2(litex_basys3_pac::PS2);

fn map_ps2_to_unicode(scancode: u8) -> Vec<u8> {
    format!("{scancode:x}").into_bytes()
}

impl PS2 {

    pub fn new(ps2: litex_basys3_pac::PS2) -> Self {
        Self(ps2)
    }

    pub fn try_read(&self) -> Option<Vec<u8>> {
        if self.0.data_available().read().data_available().bit_is_set() {
            Some(map_ps2_to_unicode(self.0.scancode().read().scancode().bits()))
        } else {
            None
        }
    }
}