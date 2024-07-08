use crate::character_set::NationalOptionCharacterSubset;
use crate::teletext::{enhancements::EnhancementTriplet, ControlBits, TeletextChar};
use litex_basys3_pac::{mem_map, Teletext};
use core::ptr::slice_from_raw_parts_mut;

pub trait TeletextInterface {
    fn page_number(&self) -> u8;
    fn magazine_number(&self) -> u8;
    fn set_magazine_page_number(&mut self, new_magazine: u8, new_page: u8);
    fn control_bits(&self) -> ControlBits;
    fn set_control_bits(&mut self, new_control_bits: ControlBits);
    fn write_char(&mut self, char: TeletextChar, col: u8, line: u8);
    
    fn frame_finished(&self) -> bool;

    fn write_enhancement(
        &mut self,
        enhancement: EnhancementTriplet,
        packet_designation: u8,
        index: u8,
    ) {
        const PACKET_START: u8 = 25;

        let (address, mode, data) = enhancement.into_triplet();

        let enhancement_start = index * 3;
        let line_number = packet_designation + PACKET_START;
        self.write_char(TeletextChar(address), enhancement_start, line_number);
        self.write_char(TeletextChar(mode), enhancement_start + 1, line_number);
        self.write_char(TeletextChar(data), enhancement_start + 2, line_number);
    }
}

#[derive(Debug)]
pub struct MemTeletextInterface {
    teletext: Teletext,
    teletext_mem: &'static mut [TeletextChar],
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

impl MemTeletextInterface {
    pub(crate) fn new(teletext: Teletext) -> MemTeletextInterface {
        unsafe {
            MemTeletextInterface {
                teletext,
                teletext_mem: &mut *slice_from_raw_parts_mut(mem_map::TELETEXT_MEM_ORIGIN as *mut TeletextChar, mem_map::TELETEXT_MEM_LENGTH),
            }
        }
    }
}

impl TeletextInterface for MemTeletextInterface {
    fn page_number(&self) -> u8 {
        self.teletext.page_number().read().page_number().bits()
    }

    fn magazine_number(&self) -> u8 {
        self.teletext.magazine_number().read().magazine_number().bits()
    }

    fn set_magazine_page_number(&mut self, new_magazine: u8, new_page: u8) {
        self.teletext.magazine_number().write(|w| {
            unsafe {
                w.magazine_number().bits(new_magazine)
            }
        });
        self.teletext.page_number().write(|w| {
            unsafe {
                w.page_number().bits(new_page)
            }
        })
    }

    fn control_bits(&self) -> ControlBits {
        let controls = self.teletext.page_control_bits().read();
        ControlBits {
            erase_page: controls.erase_page().bit(),
            inhibit_display: controls.erase_page().bit(),
            magazine_serial: controls.magazine_serial().bit(),
            newsflash: controls.newsflash().bit(),
            subtitle: controls.subtitle().bit(),
            interrupted_sequence: controls.interrupted_sequence().bit(),
            suppress_header: controls.suppress_header().bit(),
            update_indicator: controls.update_indicator().bit(),
            national_option_character_subset: NationalOptionCharacterSubset::from_value(controls.national_option_character_subset().bits()),
        }
    }

    fn set_control_bits(&mut self, new_control_bits: ControlBits) {
        self.teletext.page_control_bits().write(|w| {
            w.erase_page().bit(new_control_bits.erase_page);
            w.inhibit_display().bit(new_control_bits.inhibit_display);
            w.magazine_serial().bit(new_control_bits.magazine_serial);
            w.newsflash().bit(new_control_bits.newsflash);
            w.subtitle().bit(new_control_bits.subtitle);
            w.interrupted_sequence().bit(new_control_bits.interrupted_sequence);
            w.suppress_header().bit(new_control_bits.suppress_header);
            w.update_indicator().bit(new_control_bits.update_indicator);
            unsafe {
                w.national_option_character_subset().bits(new_control_bits.national_option_character_subset.value())
            }
        })
    }

    fn write_char(&mut self, char: TeletextChar, col: u8, line: u8) {
        self.teletext_mem[line as usize * 40 + col as usize] = char;
    }

    fn frame_finished(&self) -> bool {
        self.teletext.frame_finished().read().frame_finished().bit()
    }
}
