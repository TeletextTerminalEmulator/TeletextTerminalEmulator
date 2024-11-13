//! This module contains all the code needed to interface with the teletext hardware

use crate::character_set::NationalOptionCharacterSubset;
use crate::teletext::{enhancements::EnhancementTriplet, ControlBits, TeletextChar};
use litex_basys3_pac::{mem_map, Teletext};

/// The offset at which the second teletext buffer starts
const BUFFER_OFFSET: isize = 2 * 24 * 40;

/// Rust-Trait to interface with the Hardware-Teletext component
pub trait TeletextInterface {
    /// Retrieves current page-number onto which the data is currently written
    /// returns number between 0x00 and 0xFF
    fn page_number(&self) -> u8;
    /// Retrieves current magazine-number onto which the data is currently written
    /// returns number between 0x00 and 0x0F
    fn magazine_number(&self) -> u8;
    /// Sets the current magazine- and page-number onto which the data is written
    /// 
    /// # Arguments
    /// * `new_magazine` - The new magazine number
    /// * `new_page` - The new page number
    fn set_magazine_page_number(&mut self, new_magazine: u8, new_page: u8);
    /// Get the current [control bits](ControlBits)
    fn control_bits(&self) -> ControlBits;

    /// Set new [control bits](ControlBits)
    fn set_control_bits(&mut self, new_control_bits: ControlBits);
    /// Write a teletext character into the teletext memory
    /// 
    /// # Arguments
    /// * `char` - The teletext character
    /// * `col` - The column
    /// * `line` - The line
    /// * `buf` - The buffer that should be written to
    fn write_char(&mut self, char: TeletextChar, col: u8, line: u8, buf: bool);
    /// Read a teletext character at the given position
    /// 
    /// # Arguments
    /// * `col` - The column
    /// * `line` - The line
    /// * `buf` - The buffer that should be read from
    fn read_char(&self, col: u8, line: u8, buf: bool) -> TeletextChar;

    /// Sets which buffer should be shown on screen
    fn set_buffer(&mut self, buf: bool);
    /// Return true if the frame has finished and a new frame hasn't started yet
    fn frame_finished(&self) -> bool;

    /// Write an enhancement triplet into the teletext memory
    /// 
    /// # Arguments
    /// * `enhancement` - The enhancement triplet
    /// * `packet_designation` - The corresponding packet number
    /// * `index` - The index inside the packet
    /// * `buf` - The buffer that should be written to
    fn write_enhancement(
        &mut self,
        enhancement: EnhancementTriplet,
        packet_designation: u8,
        index: u8,
        buf: bool,
    ) {
        /// Line number at which enhancement packets are encoded in the teletext memory
        const PACKET_START: u8 = 25;

        let (address, mode, data) = enhancement.into_triplet();

        let enhancement_start = index * 3;
        let line_number = packet_designation + PACKET_START;
        self.write_char(TeletextChar(address), enhancement_start, line_number, buf);
        self.write_char(TeletextChar(mode), enhancement_start + 1, line_number, buf);
        self.write_char(TeletextChar(data), enhancement_start + 2, line_number, buf);
    }
}

/// [TeletextInterface] implementation which matches the SoC
#[derive(Debug)]
pub struct MemTeletextInterface {
    /// PAC struct for the CSR registers
    teletext: Teletext,
    /// Pointer to the memory region containing the teletext characters and enhancement packets
    teletext_mem: *mut TeletextChar,
}

impl NationalOptionCharacterSubset {
    /// Converts the enum variant into a binary teletext subset code
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

    /// Converts the teletext subset code to a fitting enum variant
    /// 
    /// # Arguments
    /// * `val` - The binary subset code
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

    /// Creates a new teletext interface using the teletext CSR registers
    ///
    /// # Arguments
    /// * `teletext` - The CSR registers from the PAC
    pub(crate) fn new(teletext: Teletext) -> MemTeletextInterface {
        MemTeletextInterface {
            teletext,
            teletext_mem: mem_map::TELETEXT_MEM_ORIGIN as *mut TeletextChar,
        }
    }
}

impl TeletextInterface for MemTeletextInterface {
    fn page_number(&self) -> u8 {
        self.teletext.page_number().read().page_number().bits()
    }

    fn magazine_number(&self) -> u8 {
        self.teletext
            .magazine_number()
            .read()
            .magazine_number()
            .bits()
    }

    fn set_magazine_page_number(&mut self, new_magazine: u8, new_page: u8) {
        self.teletext
            .magazine_number()
            .write(|w| unsafe { w.magazine_number().bits(new_magazine) });
        self.teletext
            .page_number()
            .write(|w| unsafe { w.page_number().bits(new_page) })
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
            national_option_character_subset: NationalOptionCharacterSubset::from_value(
                controls.national_option_character_subset().bits(),
            ),
        }
    }

    fn set_control_bits(&mut self, new_control_bits: ControlBits) {
        self.teletext.page_control_bits().write(|w| {
            w.erase_page().bit(new_control_bits.erase_page);
            w.inhibit_display().bit(new_control_bits.inhibit_display);
            w.magazine_serial().bit(new_control_bits.magazine_serial);
            w.newsflash().bit(new_control_bits.newsflash);
            w.subtitle().bit(new_control_bits.subtitle);
            w.interrupted_sequence()
                .bit(new_control_bits.interrupted_sequence);
            w.suppress_header().bit(new_control_bits.suppress_header);
            w.update_indicator().bit(new_control_bits.update_indicator);
            unsafe {
                w.national_option_character_subset()
                    .bits(new_control_bits.national_option_character_subset.value())
            }
        })
    }

    fn write_char(&mut self, char: TeletextChar, col: u8, line: u8, buf: bool) {
        unsafe {
            self.teletext_mem
                .offset(line as isize * 40 + col as isize + buf as isize * BUFFER_OFFSET)
                .write_volatile(char);
        }
    }

    fn frame_finished(&self) -> bool {
        self.teletext.frame_finished().read().frame_finished().bit()
    }

    fn set_buffer(&mut self, buf: bool) {
        self.teletext.buffer().write(|w| w.buffer().bit(buf))
    }

    fn read_char(&self, col: u8, line: u8, buf: bool) -> TeletextChar {
        unsafe {
            self.teletext_mem
                .offset(line as isize * 40 + col as isize + buf as isize * BUFFER_OFFSET)
                .read_volatile()
        }
    }
}
