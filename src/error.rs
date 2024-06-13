pub type Result<T> = core::result::Result<T, TeletextError>;

#[derive(Debug)]
pub enum TeletextError {
    OutOfBounds { param: &'static str, value: usize },
}
