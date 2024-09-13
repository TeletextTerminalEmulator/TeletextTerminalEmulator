//! Alacritty - The GPU Enhanced Terminal.

#![warn(rust_2018_idioms, future_incompatible)]
#![deny(clippy::all, clippy::if_not_else, clippy::enum_glob_use)]
#![cfg_attr(clippy, deny(warnings))]

#![no_std]

#[macro_use]
extern crate alloc;

pub(crate) use portable_atomic_util::Arc;
pub(crate) use portable_atomic as atomic;

pub mod event;
pub mod grid;
pub mod index;
pub mod sync;
pub mod term;

pub use crate::grid::Grid;
pub use crate::term::Term;
pub use vte;
