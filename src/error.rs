/// Wrapper for the core::result::Result type that only uses [TeletextError]
pub type Result<T> = core::result::Result<T, TeletextError>;

/// Contains all possible errors that are thrown
#[derive(Debug)]
pub enum TeletextError {
    /// Is thrown if something is written out of bounds on the teletext frame
    OutOfBounds { _param: &'static str, _value: usize },
}
