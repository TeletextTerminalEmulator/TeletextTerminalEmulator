use crate::character_set::NationalOptionCharacterSubset;
use crate::teletext::{ControlBits, TeletextChar, enhancements::EnhancementTriplet};
use core::ptr;

pub trait TeletextInterface {
    fn page_number(&self) -> u8;
    fn magazine_number(&self) -> u8;
    fn set_magazine_page_number(&mut self, new_magazine: u8, new_page: u8);
    fn control_bits(&self) -> ControlBits;
    fn set_control_bits(&mut self, new_control_bits: ControlBits);
    fn write_char(&mut self, char: TeletextChar, col: u8, line: u8);

    fn write_enhancement(&mut self, enhancement: EnhancementTriplet, packet_designation: u8, index: u8) {
        const PACKET_START: u8 = 25;

        let (address, mode, data) = enhancement.into_triplet();

        let enhancement_start = index * 3;
        let line_number = packet_designation + PACKET_START;
        self.write_char(
            TeletextChar(address),
            enhancement_start,
            line_number,
        );
        self.write_char(
            TeletextChar(mode),
            enhancement_start + 1,
            line_number,
        );
        self.write_char(
            TeletextChar(data),
            enhancement_start + 2,
            line_number,
        );
    }
}

#[derive(Debug)]
pub(crate) struct RawTeletextInterface {
    base_address: *mut u32,
}

impl NationalOptionCharacterSubset {
    fn value(&self) -> u8 {
        match *self {
            NationalOptionCharacterSubset::English => 0b000,
            NationalOptionCharacterSubset::German => 0b001,
            NationalOptionCharacterSubset::Swedish
            | NationalOptionCharacterSubset::Finnish
            | NationalOptionCharacterSubset::Hungarian => 0b010,
            NationalOptionCharacterSubset::Italian => 0b011,
            NationalOptionCharacterSubset::French => 0b100,
            NationalOptionCharacterSubset::Portuguese | NationalOptionCharacterSubset::Spanish => {
                0b101
            }
            NationalOptionCharacterSubset::Czech | NationalOptionCharacterSubset::Slovak => 0b110,
            NationalOptionCharacterSubset::None => {
                panic!("The \"None\" subset does not actually exist and does not have a code.")
            }
        }
    }

    fn from_value(val: u8) -> NationalOptionCharacterSubset {
        match val {
            0b000 => NationalOptionCharacterSubset::English,
            0b001 => NationalOptionCharacterSubset::German,
            0b010 => NationalOptionCharacterSubset::Swedish,
            0b011 => NationalOptionCharacterSubset::Italian,
            0b100 => NationalOptionCharacterSubset::French,
            0b101 => NationalOptionCharacterSubset::Portuguese,
            0b110 => NationalOptionCharacterSubset::Czech,
            _ => panic!("Invalid National Option Character Subset"),
        }
    }
}

impl RawTeletextInterface {
    pub(crate) unsafe fn new(base_address: usize) -> RawTeletextInterface {
        RawTeletextInterface {
            base_address: base_address as *mut u32,
        }
    }
}

impl TeletextInterface for RawTeletextInterface {
    fn page_number(&self) -> u8 {
        unsafe { ptr::read_volatile(self.base_address as *const u8) }
    }

    fn magazine_number(&self) -> u8 {
        (unsafe { ptr::read_volatile(self.base_address as *const u16) >> 8 }) as u8
    }

    fn set_magazine_page_number(&mut self, new_magazine: u8, new_page: u8) {
        let value = ((new_magazine as u16) << 8) | new_page as u16;
        unsafe { ptr::write_volatile(self.base_address as *mut u16, value) }
    }

    fn control_bits(&self) -> ControlBits {
        let part1 = unsafe { ptr::read_volatile(self.base_address.offset(4)) };
        let part2 = unsafe { ptr::read_volatile(self.base_address.offset(5)) };
        let part3 = unsafe { ptr::read_volatile(self.base_address.offset(6) as *const u8) };

        ControlBits {
            erase_page: part1 & 1 != 0,
            newsflash: part1 >> 8 & 1 != 0,
            subtitle: part1 >> 16 & 1 != 0,
            suppress_header: part1 >> 24 & 1 != 0,
            update_indicator: part2 & 1 != 0,
            interrupted_sequence: part2 >> 8 & 1 != 0,
            inhibit_display: part2 >> 16 & 1 != 0,
            magazine_serial: part2 >> 24 & 1 != 0,
            national_option_character_subset: NationalOptionCharacterSubset::from_value(part3),
        }
    }

    fn set_control_bits(&mut self, new_control_bits: ControlBits) {
        let part1 = ((new_control_bits.suppress_header as u32) << 24)
            | ((new_control_bits.subtitle as u32) << 16)
            | ((new_control_bits.newsflash as u32) << 8)
            | new_control_bits.erase_page as u32;
        let part2 = ((new_control_bits.magazine_serial as u32) << 24)
            | ((new_control_bits.inhibit_display as u32) << 16)
            | ((new_control_bits.interrupted_sequence as u32) << 8)
            | new_control_bits.update_indicator as u32;
        let part3 = new_control_bits.national_option_character_subset.value();
        unsafe {
            ptr::write_volatile(self.base_address.offset(4), part1);
            ptr::write_volatile(self.base_address.offset(5), part2);
            ptr::write_volatile(self.base_address.offset(6) as *mut u8, part3);
        }
    }

    fn write_char(&mut self, char: TeletextChar, col: u8, line: u8) {
        let value = ((line as u32) << 24) | ((col as u32) << 16) | char.0 as u32;
        unsafe { ptr::write_volatile(self.base_address.offset(8), value) }
    }
}
