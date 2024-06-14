use unicode_normalization::UnicodeNormalization;

use crate::teletext::TeletextChar;
use core::fmt::Debug;

#[allow(dead_code)]
#[derive(Debug, Default, Copy, Clone)]
pub enum NationalOptionCharacterSubset {
    None, // Cannot be selected directly but can be used by enhancement packets

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

pub enum CharacterSet {
    G0,
    G0WithDiacritical(u8),
    G2,
    G3,
}

impl NationalOptionCharacterSubset {
    fn has_char(&self, ch: char) -> Option<u8> {
        use NationalOptionCharacterSubset::*;

        macro_rules! subset_code {
            ($pattern:pat, $code:expr) => {
                match self {
                    $pattern => $code,
                    _ => return Option::None,
                }
            };
        }

        Some(match ch {
            '#' => match self {
                English | French | Italian => 0x5f,
                None | Czech | Slovak | German | Swedish | Finnish => 0x23,
                _ => return Option::None,
            },
            // English
            '£' => subset_code!(English | Italian, 0x23),
            '$' => subset_code!(English | German | Italian | Portuguese | Spanish, 0x24),
            '@' => subset_code!(English | None, 0x40),
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
            '^' => subset_code!(German | None, 0x5e),
            '_' => subset_code!(German | None, 0x5f),
            '°' => subset_code!(German, 0x60),
            'ä' => subset_code!(German | Swedish | Finnish, 0x7b),
            'ö' => subset_code!(German | Swedish | Finnish, 0x7c),
            'ü' => subset_code!(German, 0x7d),
            'ß' => subset_code!(German, 0x7e),

            // None
            '¤' => subset_code!(None, 0x24),
            '[' => subset_code!(None, 0x5B),
            '\\' => subset_code!(None, 0x5C),
            ']' => subset_code!(None, 0x5D),
            '`' => subset_code!(None, 0x60),
            '{' => subset_code!(None, 0x7B),
            '|' => subset_code!(None, 0x7C),
            '}' => subset_code!(None, 0x7D),
            '~' => subset_code!(None, 0x7E),

            _ => return Option::None,
        })
    }
}

fn g0_set(ch: char, subset: NationalOptionCharacterSubset) -> Option<TeletextChar> {
    Some(TeletextChar(match ch {
        ' ' => 0x20,
        '!' => 0x21,
        '"' => 0x22,
        '%' => 0x25,
        '&' => 0x26,
        '\'' => 0x27,
        '(' => 0x28,
        ')' => 0x29,
        '*' if !matches!(subset, NationalOptionCharacterSubset::None) => 0x2a,
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

        // Used for spacing attributes and direct character access
        '\u{E000}'..='\u{E07F}' => (ch as u32 - 0xE000) as u8,

        _ => subset.has_char(ch)?,
    }))
}

fn g2_set(ch: char) -> Option<TeletextChar> {
    Some(TeletextChar(match ch {
        '¡' => 0x21,
        '¢' => 0x22,
        '£' => 0x23,
        '$' => 0x24,
        '¥' => 0x25,
        '#' => 0x26,
        '§' => 0x27,
        '¤' => 0x28,
        '‘' => 0x29,
        '“' => 0x2A,
        '«' => 0x2B,
        '←' => 0x2C,
        '↑' => 0x2D,
        '→' => 0x2E,
        '↓' => 0x2F,

        '°' => 0x30,
        '±' => 0x31,
        '²' => 0x32,
        '³' => 0x33,
        '×' => 0x34,
        'µ' => 0x35,
        '¶' => 0x36,
        '⋅' => 0x37,
        '÷' => 0x38,
        '’' => 0x39,
        '”' => 0x3A,
        '»' => 0x3B,
        '¼' => 0x3C,
        '½' => 0x3D,
        '¾' => 0x3E,
        '¿' => 0x3F,

        // 0x40 - 0x4F contain diacritical marks
        '—' | '―' => 0x50,
        '¹' => 0x51,
        '®' => 0x52,
        '©' => 0x53,
        '™' => 0x54,
        '♪' | '🎵' => 0x55,
        '₠' => 0x56,
        '‰' => 0x57,
        'α' => 0x58,
        '⅛' => 0x5C,
        '⅜' => 0x5D,
        '⅝' => 0x5E,
        '⅞' => 0x5F,

        'Ω' => 0x60,
        'Æ' => 0x61,
        'Đ' => 0x62,
        'ª' => 0x63,
        'Ħ' => 0x64,
        'Ĳ' => 0x66,
        'Ŀ' => 0x67,
        'Ł' => 0x68,
        'Ø' => 0x69,
        'Œ' => 0x6A,
        'º' => 0x6B,
        'Þ' => 0x6C,
        'Ŧ' => 0x6D,
        'Ŋ' => 0x6E,
        'ŉ' => 0x6F,

        'ĸ' => 0x70,
        'æ' => 0x71,
        'đ' => 0x72,
        'ð' => 0x73,
        'ħ' => 0x74,
        'ı' => 0x75,
        'ĳ' => 0x76,
        'ŀ' => 0x77,
        'ł' => 0x78,
        'ø' => 0x79,
        'œ' => 0x7A,
        'ß' => 0x7B,
        'þ' => 0x7C,
        'ŧ' => 0x7D,
        'ŋ' => 0x7E,

        _ => return None,
    }))
}

fn g3_set(ch: char) -> Option<TeletextChar> {
    Some(TeletextChar(match ch {
        '🬼' => 0x20,
        '🬽' => 0x21,
        '🬾' => 0x22,
        '🬿' => 0x23,
        '🭀' => 0x24,
        // TODO
        '🭁' => 0x26,
        '🭂' => 0x27,
        '🭃' => 0x28,
        '🭄' => 0x29,
        '🭅' => 0x2A,
        '🭆' => 0x2B,
        '🭨' => 0x2C,
        '🭩' => 0x2D,
        '🭰' => 0x2E,
        '🮐' => 0x2F,

        //TODO
        _ => return None,
    }))
}

fn g0_set_with_diacriticals(ch: char) -> Option<(TeletextChar, u8)> {
    /*let mut chars = ch.nfd();

    let base = chars.next()?;
    let diacritic = chars.next();

    let base_g0 = g0_set(base, NationalOptionCharacterSubset::None)?;*/
    let base_g0 = g0_set(ch, NationalOptionCharacterSubset::None)?;
    let diacritic = None;

    Some((
        base_g0,
        diacritic
            .map(|dia| match dia {
                '\u{300}' => 0x1,
                '\u{301}' => 0x2,
                '\u{302}' => 0x3,
                '\u{303}' => 0x4,
                '\u{304}' => 0x5,
                '\u{306}' => 0x6,
                '\u{307}' => 0x7,
                '\u{308}' => 0x8,
                '\u{323}' => 0x9,
                '\u{30A}' => 0xA,
                '\u{327}' => 0xB,
                '\u{332}' => 0xC,
                '\u{30B}' => 0xD,
                '\u{328}' => 0xE,
                '\u{30C}' => 0xF,
                _ => 0,
            })
            .unwrap_or(0),
    ))
}

pub fn char_to_teletext(
    ch: char,
    subset: NationalOptionCharacterSubset,
) -> Option<(TeletextChar, CharacterSet)> {
    g0_set(ch, subset)
        .map(|ch| (ch, CharacterSet::G0))
        .or_else(|| g2_set(ch).map(|ch| (ch, CharacterSet::G2)))
        .or_else(|| g3_set(ch).map(|ch| (ch, CharacterSet::G3)))
        .or_else(|| {
            g0_set_with_diacriticals(ch).map(|(ch, dia)| (ch, CharacterSet::G0WithDiacritical(dia)))
        })
}
