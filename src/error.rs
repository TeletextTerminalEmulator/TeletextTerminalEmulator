pub type Result<T> = core::result::Result<T, TeletextError>;

#[derive(Debug)]
pub enum TeletextError {
    OutOfBounds { _param: &'static str, _value: usize },
}
