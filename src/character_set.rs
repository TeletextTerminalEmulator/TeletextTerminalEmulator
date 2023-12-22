use core::fmt::Debug;
use crate::teletext::TeletextChar;
use crate::error::{Result, TeletextError};

#[derive(Debug, Default, Copy, Clone)]
pub enum NationalOptionCharacterSubset {
    #[default]
    English,
    German,
    Swedish,
    Finnish,
    Hungarian,
    Italian,
    French,
    Portuguese,
    Spanish,
    Czech,
    Slovak,
}

impl NationalOptionCharacterSubset {

    fn has_char(&self, ch: char) -> Result<u8> {
        use NationalOptionCharacterSubset::*;
        
        macro_rules! subset_code {
            ($pattern:pat, $code:expr) => {
                match self {
                    $pattern => $code,
                    _ => return Err(TeletextError::InvalidSubset(ch, *self))
                }
            };
        }

        Ok(match ch {
            '#' => {
                match self {
                    English |
                    French  |
                    Italian => 0x5f,
                    Czech |
                    Slovak |
                    German |
                    Swedish |
                    Finnish => 0x23,
                    _ => return Err(TeletextError::InvalidSubset(ch, *self))
                }
            },
            // English
            '£' => subset_code!(English | Italian, 0x23),
            '$' => subset_code!(English | German | Italian | Portuguese | Spanish, 0x24),
            '@' => subset_code!(English, 0x40),
            '←' => subset_code!(English, 0x5b),
            '½' => subset_code!(English, 0x5c),
            '→' => subset_code!(English | Italian, 0x5d),
            '↑' => subset_code!(English | Italian, 0x5e),
            '—' => subset_code!(English, 0x60),
            '¼' => subset_code!(English, 0x7b),
            '‖' => subset_code!(English, 0x7c),
            '¾' => subset_code!(English, 0x7d),
            '÷' => subset_code!(English, 0x7e),
            // German
            '§' => subset_code!(German, 0x40),
            'Ä' => subset_code!(German | Swedish | Finnish, 0x5b),
            'Ö' => subset_code!(German | Swedish | Finnish, 0x5c),
            'Ü' => subset_code!(German | Swedish | Finnish, 0x5d),
            '^' => subset_code!(German, 0x5e),
            '_' => subset_code!(German, 0x5f),
            '°' => subset_code!(German, 0x60),
            'ä' => subset_code!(German | Swedish | Finnish, 0x7b),
            'ö' => subset_code!(German | Swedish | Finnish, 0x7c),
            'ü' => subset_code!(German, 0x7d),
            'ß' => subset_code!(German, 0x7e),
            _ => return Err(TeletextError::InvalidChar(ch))
        })
    }

}


pub fn char_to_teletext(ch: char, subset: NationalOptionCharacterSubset) -> Result<TeletextChar> {
    Ok(TeletextChar(match ch {
        ' ' => 0x20,
        '!' => 0x21,
        '"' => 0x22,
        '%' => 0x25,
        '&' => 0x26,
        '\'' => 0x27,
        '(' => 0x28,
        ')' => 0x29,
        '*' => 0x2a,
        '+' => 0x2b,
        ',' => 0x2c,
        '-' => 0x2d,
        '.' => 0x2e,
        '/' => 0x2f,

        '0'..='9' => (ch as u8) - b'0' + 0x30,
        ':' => 0x3a,
        ';' => 0x3b,
        '<' => 0x3c,
        '=' => 0x3d,
        '>' => 0x3d,
        '?' => 0x3f,

        'A'..='Z' => (ch as u8) - b'A' + 0x41,
        'a'..='z' => (ch as u8) - b'a' + 0x61,
        '█' => 0x7f,

        _ => subset.has_char(ch)?,
    }))
}

