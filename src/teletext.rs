use crate::character_set::NationalOptionCharacterSubset;
use crate::error::{Result, TeletextError};
use crate::teletext::enhancements::EnhancementBuffer;
use crate::teletext::interface::{RawTeletextInterface, TeletextInterface};
use alacritty_terminal::grid::Dimensions;
use alacritty_terminal::term::RenderableContent;
use alloc::string::String;
use core::iter::repeat;
use enhancements::{EnhancementError, ENHANCEMENTS_PER_LINE};
use litex_basys3_pac::mem_map;

pub mod enhancements;
pub mod interface;
pub mod terminal;

pub const LINE_COUNT: u8 = 23; // Header not included
pub const COLUMN_COUNT: u8 = 40;
pub const HEADER_LINE_ADDRESS: u8 = 24;

const HEADER_OFFSET: u8 = 8;
const HEADER_LENGTH: u8 = COLUMN_COUNT - HEADER_OFFSET;

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
    pub national_option_character_subset: NationalOptionCharacterSubset,
}

#[derive(Debug, Default, Clone, Copy)]
pub struct TeletextChar(pub u8);

#[derive(Debug)]
pub struct Teletext<T: TeletextInterface> {
    interface: T,
    configuration: ControlBits,
    page_number: u8,
    magazine_number: u8,
    title: String,
}

macro_rules! check_bounds {
    ($line: expr, $column: expr) => {
        if $line != HEADER_LINE_ADDRESS && !(1..=LINE_COUNT).contains(&($line)) {
            Err(TeletextError::OutOfBounds {
                _param: stringify!($line),
                _value: $line as usize,
            })
        } else if $column >= COLUMN_COUNT {
            Err(TeletextError::OutOfBounds {
                _param: stringify!($column),
                _value: $column as usize,
            })
        } else {
            Ok(())
        }
    };
}

#[allow(dead_code)]
impl<T: TeletextInterface> Teletext<T> {
    pub fn new(interface: T) -> Teletext<T> {
        let mut teletext = Teletext {
            page_number: interface.page_number(),
            magazine_number: interface.magazine_number(),
            configuration: interface.control_bits(),
            interface,
            title: String::new(),
        };
        teletext.init_page();
        teletext
    }

    fn init_page(&mut self) {
        for line in 1..=LINE_COUNT {
            for col in 0..COLUMN_COUNT {
                self.interface.write_char(TeletextChar(0x20), line, col);
            }
        }
        // init header
        for col in 0..COLUMN_COUNT {
            self.interface
                .write_char(TeletextChar(0x20), HEADER_LINE_ADDRESS, col);
        }
    }

    pub fn set_title<S: Into<String>>(&mut self, title: S) {
        self.title = title.into();
    }

    pub fn write_page(&mut self, content: &mut RenderableContent<'_>) -> Result<()> {
        let mut enhancements = EnhancementBuffer::new();

        for (index, header_ch) in self
            .title
            .chars()
            .chain(repeat(' '))
            .take(HEADER_LENGTH as usize)
            .enumerate()
        {
            let column = index as u8 + HEADER_OFFSET;

            check_bounds!(HEADER_LINE_ADDRESS, column)?;
            match enhancements.add_char(
                0,
                column,
                header_ch,
                self.configuration.national_option_character_subset,
            ) {
                Ok(()) => {
                    self.interface
                        .write_char(TeletextChar(0x7F), column, HEADER_LINE_ADDRESS)
                }
                Err(EnhancementError::PlainChar(ch)) => {
                    self.interface.write_char(ch, column, HEADER_LINE_ADDRESS)
                }
                Err(EnhancementError::NoEnhancementSpace) => {
                    self.interface
                        .write_char(TeletextChar(0x21), column, HEADER_LINE_ADDRESS)
                }
                Err(EnhancementError::Unrepresentable) => {
                    self.interface
                        .write_char(TeletextChar(0x3F), column, HEADER_LINE_ADDRESS)
                }
                Err(EnhancementError::CellOutOfOrder) => {
                    panic!("Enhancement buffer has been filled out of order")
                }
            }
        }

        for cell in content.display_iter.by_ref() {
            let alacritty_terminal::index::Point {
                line: alacritty_terminal::index::Line(line),
                column: alacritty_terminal::index::Column(column),
            } = cell.point;

            let line = line as u8 + 1;
            let column = column as u8;
            check_bounds!(line, column)?;

            match enhancements.add_char(
                line,
                column,
                cell.c,
                self.configuration.national_option_character_subset,
            ) {
                Ok(()) => self.interface.write_char(TeletextChar(0x7F), column, line),
                Err(EnhancementError::PlainChar(ch)) => self.interface.write_char(ch, column, line),
                Err(EnhancementError::NoEnhancementSpace) => {
                    self.interface.write_char(TeletextChar(0x21), column, line)
                }
                Err(EnhancementError::Unrepresentable) => {
                    self.interface.write_char(TeletextChar(0x3F), column, line)
                }
                Err(EnhancementError::CellOutOfOrder) => {
                    panic!("Enhancement buffer has been filled out of order")
                }
            }
        }

        for (index, triplet) in enhancements.triplets().iter().enumerate() {
            self.interface.write_enhancement(
                *triplet,
                (index / ENHANCEMENTS_PER_LINE) as u8,
                (index % ENHANCEMENTS_PER_LINE) as u8,
            );
        }

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
        self.interface
            .set_magazine_page_number(self.magazine_number, new_page);
    }

    pub fn get_page(&self) -> u8 {
        self.page_number
    }

    pub fn set_magazine(&mut self, new_magazine: u8) -> Result<()> {
        if new_magazine > 7 {
            return Err(TeletextError::OutOfBounds {
                _param: stringify!(new_magazine),
                _value: new_magazine as usize,
            });
        }
        self.magazine_number = new_magazine;
        self.interface
            .set_magazine_page_number(new_magazine, self.page_number);
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
        LINE_COUNT.into()
    }

    fn columns(&self) -> usize {
        COLUMN_COUNT.into()
    }
}

impl Teletext<RawTeletextInterface> {
    pub unsafe fn new_raw() -> Teletext<RawTeletextInterface> {
        let interface = RawTeletextInterface::new(mem_map::TELETEXT_ORIGIN);
        Teletext::new(interface)
    }
}
