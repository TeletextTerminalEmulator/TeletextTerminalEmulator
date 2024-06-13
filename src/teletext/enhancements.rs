use crate::character_set::{char_to_teletext, CharacterSet, NationalOptionCharacterSubset};
use crate::teletext::TeletextChar;

pub const ENHANCEMENT_LINE_COUNT: usize = 16;
pub const ENHANCEMENTS_PER_LINE: usize = 13;
pub const TOTAL_ENHANCEMENTS: usize = ENHANCEMENT_LINE_COUNT * ENHANCEMENTS_PER_LINE;

#[derive(Debug, Clone, Copy)]
pub enum EnhancementError {
    NoEnhancementSpace,
    CellOutOfOrder,
    PlainChar(TeletextChar),
    Unrepresentable(char),
}

type Result<T> = core::result::Result<T, EnhancementError>;

#[derive(Debug, Clone, Copy)]
pub enum EnhancementTriplet {
    // Line enhancements
    SetActivePosition {
        line: u8, // A 0 represents line 24, for line 0 use AddressDisplayLine0
    },
    #[allow(dead_code)]
    AddressDisplayLine0 {
        color: u8, // TODO: color representation?
        affect_all_lines: bool,
    },
    TerminationMarker,

    // Column enhancements
    DrawG3Set {
        column: u8,
        character: TeletextChar,
    },
    DrawG2Set {
        column: u8,
        character: TeletextChar,
    },
    DrawG0WithDiacritical {
        column: u8,
        diacritical: u8, // TODO: diacritical representation
        character: TeletextChar,
    },
}

impl EnhancementTriplet {
    pub fn into_triplet(self) -> (u8, u8, u8) {
        match self {
            EnhancementTriplet::SetActivePosition { line } => (line + 1, 0b00100, 0),
            EnhancementTriplet::AddressDisplayLine0 {
                color,
                affect_all_lines,
            } => (
                0b111111,
                0b00111,
                (affect_all_lines as u8 * 0b1100000) | color,
            ),
            EnhancementTriplet::TerminationMarker => (0b111111, 0b11111, 0b0000111),
            EnhancementTriplet::DrawG3Set { column, character } => (column, 0b00010, character.0),
            EnhancementTriplet::DrawG2Set { column, character } => (column, 0b01111, character.0),
            EnhancementTriplet::DrawG0WithDiacritical {
                column,
                diacritical,
                character,
            } => (column, 0b10000 | diacritical, character.0),
        }
    }
}

pub struct EnhancementBuffer {
    buffer: [EnhancementTriplet; TOTAL_ENHANCEMENTS],
    used: usize,
    line: u8,
    column: u8,
}

impl EnhancementBuffer {
    pub fn new() -> EnhancementBuffer {
        EnhancementBuffer {
            buffer: [EnhancementTriplet::TerminationMarker; TOTAL_ENHANCEMENTS],
            used: 0,
            line: 0,
            column: 0,
        }
    }

    fn push_enhancement(&mut self, enhancement: EnhancementTriplet) -> Result<()> {
        if self.used >= self.buffer.len() {
            return Err(EnhancementError::NoEnhancementSpace);
        }

        self.buffer[self.used] = enhancement;
        self.used += 1;

        Ok(())
    }

    pub fn add_char(
        &mut self,
        line: u8,
        column: u8,
        ch: char,
        subset: NationalOptionCharacterSubset,
    ) -> Result<()> {
        let enhancement = match char_to_teletext(ch, subset)
            .ok_or(EnhancementError::Unrepresentable(ch))?
        {
            (character, CharacterSet::G2) => EnhancementTriplet::DrawG2Set { column, character },
            (character, CharacterSet::G3) => EnhancementTriplet::DrawG3Set { column, character },
            (character, CharacterSet::G0WithDiacritical(diacritical)) => {
                EnhancementTriplet::DrawG0WithDiacritical {
                    column,
                    character,
                    diacritical,
                }
            }
            (character, CharacterSet::G0) => return Err(EnhancementError::PlainChar(character)),
        };

        if line < self.line {
            return Err(EnhancementError::CellOutOfOrder);
        }

        if line > self.line {
            self.push_enhancement(EnhancementTriplet::SetActivePosition { line })?;
            self.line = line;
            self.column = 0;
        }

        if column < self.column {
            return Err(EnhancementError::CellOutOfOrder);
        }

        if column > self.column {
            self.column = column;
        }

        self.push_enhancement(enhancement)
    }

    pub fn triplets(&self) -> &[EnhancementTriplet] {
        &self.buffer
    }
}
