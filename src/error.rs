use crate::character_set::NationalOptionCharacterSubset;

pub type Result<T> = core::result::Result<T, TeletextError>;

#[derive(Debug)]
pub enum TeletextError {
    InvalidChar(char),
    InvalidSubset(char, NationalOptionCharacterSubset),
    OutOfBounds { param: &'static str, value: usize },
}
