use crate::character_set::NationalOptionCharacterSubset;
use crate::error::{Result, TeletextError};
use crate::teletext::enhancements::EnhancementBuffer;
use crate::teletext::interface::TeletextInterface;
use alacritty_terminal::grid::Dimensions;
use alacritty_terminal::term::RenderableContent;
use alloc::string::String;
use core::iter::repeat;
use enhancements::{EnhancementError, ENHANCEMENTS_PER_LINE};
use interface::MemTeletextInterface;
use litex_basys3_pac as pac;

pub mod enhancements;
pub mod interface;
pub mod terminal;

/// Amount of lines of a teletext frame, without the header
pub const LINE_COUNT: u8 = 23; // Header not included
/// Amount of columns of a teletext frame
pub const COLUMN_COUNT: u8 = 40;
/// Address of the header line inside the teletext buffer
pub const HEADER_LINE_ADDRESS: u8 = 24;

/// The writeable section of a teletext header line begins after a few columns,
/// as it is covered by the display of the current page and magazine.
const HEADER_OFFSET: u8 = 8;
/// Column count of a teletext header line
const HEADER_LENGTH: u8 = COLUMN_COUNT - HEADER_OFFSET;

/// ControlBits are used to configure some properties of a teletext page
#[derive(Debug, Default, Clone, Copy)]
pub struct ControlBits {
    /// If set the teletext decoder clears the previous page before storing the new page
    pub erase_page: bool,
    /// If set all contents of the Page are displayed together with the video-signal
    pub newsflash: bool,
    /// Signals to the teletext decoder that the page contains subtitles for the accompanying video-signal
    pub subtitle: bool,
    /// If set the header of the page is not displayed
    pub suppress_header: bool,
    /// Set to tell the teletext decoder, that the page has changed since the last page-transmission
    pub update_indicator: bool,
    /// Signals that all packages sent don't have the correct order
    pub interrupted_sequence: bool,
    /// If set the transmitted page will not be displayed
    pub inhibit_display: bool,
    /// Controls when the transmission of a page ends.
    /// If set to `true` serial transmission is used, thus a page is terminated by sending a page header with a different page number
    /// If set to `false` parallel transmission is used, thus a page is terminated by sending a page header with a different page number, but the same magazine number
    pub magazine_serial: bool,
    /// Controls which Character-Set is used to display characters on Lines between 1 and 24
    pub national_option_character_subset: NationalOptionCharacterSubset,
}

/// Contains a character that uses teletext encoding
#[derive(Debug, Default, Clone, Copy)]
#[repr(transparent)]
pub struct TeletextChar(pub u8);

/// Struct that holds all necessary interfaces and variables to communicate with the teletext component
#[derive(Debug)]
pub struct Teletext {
    /// Low-Level Interface, that implements the communication with the teletext component
    interface: MemTeletextInterface,
    /// Currently used [ControlBits]
    configuration: ControlBits,
    /// Currently used page number
    page_number: u8,
    /// Currently used magazine number
    magazine_number: u8,
    /// Text that is displayed on the header line
    title: String,
    /// Controls which buffer of the implemented double-buffering is currently used
    current_buf: bool,
    /// Controls which buffer of the implemented double-buffering is used next
    next_buf: bool,
}

/// Macro that checks if an address for a position inside a page is valid
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
impl Teletext {
    /// Initializes a new Teletext interface
    ///
    /// # Arguments
    /// * `teletext_reg` - Contains all registers needed for communication with the teletext generator
    pub fn new(teletext_reg: pac::Teletext) -> Teletext {
        let interface = MemTeletextInterface::new(teletext_reg);

        let mut teletext = Teletext {
            page_number: interface.page_number(),
            magazine_number: interface.magazine_number(),
            configuration: interface.control_bits(),
            interface,
            title: String::from("Teletext Terminal"),
            current_buf: false,
            next_buf: false,
        };
        teletext.init_page(false);
        teletext
    }

    /// Initializes a teletext page
    ///
    /// # Arguments
    /// * `buf` - controls which buffer is initialized
    fn init_page(&mut self, buf: bool) {
        for line in 1..=LINE_COUNT {
            for col in 0..COLUMN_COUNT {
                self.interface
                    .write_char(TeletextChar(0x20), line, col, buf);
            }
        }
        // init header
        for col in 0..COLUMN_COUNT {
            self.interface
                .write_char(TeletextChar(0x20), HEADER_LINE_ADDRESS, col, buf);
        }
    }

    /// Sets the title of the teletext page
    ///
    /// # Arguments
    /// * `title` - contains the new title
    pub fn set_title<S: Into<String>>(&mut self, title: S) {
        self.title = title.into();
    }

    /// Writes entire page onto one of the buffers, controlled by [self.current_buf] and [self.next_buf]
    ///
    /// # Arguments
    /// * `content` - is the provided buffer that is used to render the new page
    pub fn write_page(&mut self, content: &mut RenderableContent<'_>) -> Result<()> {
        let mut enhancements = EnhancementBuffer::new();
        let next_buf = !self.current_buf;

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
                    let prev_char =
                        self.interface
                            .read_char(column, HEADER_LINE_ADDRESS, self.current_buf);
                    self.interface
                        .write_char(prev_char, column, HEADER_LINE_ADDRESS, next_buf)
                }
                Err(EnhancementError::PlainChar(ch)) => {
                    self.interface
                        .write_char(ch, column, HEADER_LINE_ADDRESS, next_buf)
                }
                Err(EnhancementError::NoEnhancementSpace) => self.interface.write_char(
                    TeletextChar(0x21),
                    column,
                    HEADER_LINE_ADDRESS,
                    next_buf,
                ),
                Err(EnhancementError::Unrepresentable) => self.interface.write_char(
                    TeletextChar(0x3F),
                    column,
                    HEADER_LINE_ADDRESS,
                    next_buf,
                ),
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
                Ok(()) => {
                    let prev_char = self.interface.read_char(column, line, self.current_buf);
                    self.interface.write_char(prev_char, column, line, next_buf)
                }
                Err(EnhancementError::PlainChar(ch)) => {
                    self.interface.write_char(ch, column, line, next_buf)
                }
                Err(EnhancementError::NoEnhancementSpace) => {
                    self.interface
                        .write_char(TeletextChar(0x21), column, line, next_buf)
                }
                Err(EnhancementError::Unrepresentable) => {
                    self.interface
                        .write_char(TeletextChar(0x3F), column, line, next_buf)
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
                next_buf,
            );
        }

        self.next_buf = next_buf;

        Ok(())
    }

    /// Updates the currently used [ControlBits]
    ///
    /// # Arguments
    /// * `config` - is the newly used configuration
    pub fn set_config(&mut self, config: ControlBits) {
        self.configuration = config;
        self.interface.set_control_bits(config);
    }

    /// Returns the currently used [ControlBits]
    pub fn get_config(&self) -> ControlBits {
        self.configuration
    }

    /// Updates the page onto the teletext page is rendered
    ///
    /// # Arguments
    /// * `new_page` - is the new page number
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

    pub fn get_frame_finished(&self) -> bool {
        self.interface.frame_finished()
    }

    pub fn update_page(&mut self) {
        if self.current_buf != self.next_buf {
            self.interface.set_buffer(self.next_buf);
            self.current_buf = self.next_buf;
        }
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
