use alacritty_terminal::grid::Dimensions;
use crate::teletext_interface::{RawTeletextInterface, TeletextInterface};
use crate::character_set::{NationalOptionCharacterSubset, char_to_teletext};
use litex_basys3_pac::mem_map;
use crate::error::{Result, TeletextError};

const LINE_COUNT: u8 = 24;
const COLUMN_COUNT: u8 = 40;

#[derive(Debug, Default, Clone, Copy)]
pub struct ControlBits {
    pub erase_page: bool,
    pub newsflash: bool,
    pub subtitle: bool,
    pub suppress_header: bool,
    pub update_indicator: bool,
    pub interrupted_sequence: bool,
    pub inhibit_display: bool,
    pub magazine_serial: bool,
    pub national_option_character_subset: NationalOptionCharacterSubset
}

pub struct TeletextChar(pub u8);

pub struct Teletext<T: TeletextInterface> {
    interface: T,
    configuration: ControlBits,
    page_number: u8,
    magazine_number: u8,
}


impl<T: TeletextInterface> Teletext<T> {
    pub fn new(interface: T) -> Teletext<T> {
        let teletext = Teletext {
            page_number: interface.page_number(),
            magazine_number: interface.magazine_number(),
            configuration: interface.control_bits(),
            interface,
        };
        teletext.init_page();
        return teletext;
    }

    fn init_page(&self) {
        for line in 0..LINE_COUNT {
            for col in 0..COLUMN_COUNT {
                self.set_char(' ', line, col).expect("The space character should always be convertable");
            }
        }
    }

    pub fn set_char(&self, c: char, row: u8, col: u8) -> Result<()> {
        if row >= LINE_COUNT {
            return Err(TeletextError::OutOfBounds{param: stringify!(row), value: row as usize});
        }
        if col >= COLUMN_COUNT {
            return Err(TeletextError::OutOfBounds{param: stringify!(col), value: col as usize});
        }
        self.interface.write_char(char_to_teletext(c, self.configuration.national_option_character_subset)?, col, row);
        Ok(())
    }

    pub fn set_config(&mut self, config: ControlBits) {
        self.configuration = config;
        self.interface.set_control_bits(config);
    }

    pub fn get_config(&self) -> ControlBits {
        self.configuration
    }

    pub fn set_page(&mut self, new_page: u8) {
        self.page_number = new_page;
        self.interface.set_magazine_page_number(self.magazine_number, new_page);
    }

    pub fn get_page(&self) -> u8 {
        self.page_number
    }

    pub fn set_magazine(&mut self, new_magazine: u8) -> Result<()> {
        if new_magazine > 7 {
            return Err(TeletextError::OutOfBounds {
                param: stringify!(new_magazine),
                value: new_magazine as usize,
            });
        }
        self.magazine_number = new_magazine;
        self.interface.set_magazine_page_number(new_magazine, self.page_number);
        Ok(())
    }

    pub fn get_magazine(&self) -> u8 {
        self.magazine_number
    }
}

pub struct TeletextDimensions;

impl Dimensions for TeletextDimensions {
    fn total_lines(&self) -> usize {
        self.screen_lines()
    }

    fn screen_lines(&self) -> usize {
        24
    }

    fn columns(&self) -> usize {
        40
    }
}

impl Teletext<RawTeletextInterface> {
    pub unsafe fn new_raw() -> Teletext<RawTeletextInterface> {
        let interface = RawTeletextInterface::new(mem_map::TELETEXT_ORIGIN);
        Teletext::new(interface)
    }
}
