#![no_std]

// Generated file, ignore warnings and formatting
#[allow(non_camel_case_types, clippy::all)]
#[rustfmt::skip]
pub mod soc;
#[allow(non_camel_case_types, clippy::all)]
#[rustfmt::skip]
pub mod mem_map;

pub use riscv;
#[cfg(feature = "rt")]
pub use riscv_rt;
pub use soc::generic::*;
pub use soc::*;
