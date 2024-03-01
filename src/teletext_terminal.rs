use core::{fmt::Write, iter::repeat};

use alacritty_terminal::{
    event::{Event, EventListener, WindowSize},
    vte::ansi::Timeout,
};
use alloc::rc::Rc;

use crate::{
    teletext::{self, Teletext},
    teletext_interface::TeletextInterface,
};

const HEADER_OFFSET: u8 = 8;
const HEADER_LENGTH: u8 = teletext::COLUMN_COUNT - HEADER_OFFSET;

pub struct TeletextTerminalListener<T: TeletextInterface>(pub Rc<Teletext<T>>);

impl<T: TeletextInterface> EventListener for TeletextTerminalListener<T> {
    fn send_event(&self, event: Event) {
        match event {
            Event::MouseCursorDirty => {}
            Event::Title(title) => {
                let title_line = title
                    .chars()
                    .chain(repeat(' '))
                    .take(HEADER_LENGTH as usize);

                self.0
                    .set_line(title_line, 0, HEADER_OFFSET, Some('?'))
                    .expect("Title line should never exceed bounds");
            }
            Event::ResetTitle => {
                let reset_title = repeat(' ').take(HEADER_LENGTH as usize);

                self.0
                    .set_line(reset_title, 0, HEADER_OFFSET, Some('?'))
                    .expect("Resetting the title should never fail");
            }
            Event::ClipboardStore(_, _) => unimplemented!(),
            Event::ClipboardLoad(_, _) => unimplemented!(),
            Event::ColorRequest(_index, func) => {
                crate::lock_uart!()
                    .write_str(&func(alacritty_terminal::vte::ansi::Rgb {
                        r: 0,
                        g: 0,
                        b: 0,
                    }))
                    .expect("Ansi sequences should always be writeable");
            }
            Event::PtyWrite(string) => {
                crate::lock_uart!()
                    .write_str(&string)
                    .expect("Ansi sequences should always be writeable");
            }
            Event::TextAreaSizeRequest(func) => {
                const CELL_SIZE: WindowSize = WindowSize {
                    num_lines: 24,
                    num_cols: 40,
                    cell_width: 12,
                    cell_height: 10,
                };

                crate::lock_uart!()
                    .write_str(&func(CELL_SIZE))
                    .expect("Ansi sequences should always be writeable");
            }
            Event::CursorBlinkingChange => {}
            Event::Wakeup => crate::TELETEXT_VALID.store(false, portable_atomic::Ordering::Relaxed),
            Event::Bell => {}
            Event::Exit => unimplemented!(),
        }
    }
}

#[derive(Default)]
pub struct LitexTimeout;

impl Timeout for LitexTimeout {
    fn set_timeout(&mut self, _duration: core::time::Duration) {
        //TODO
    }

    fn clear_timeout(&mut self) {
        //TODO
    }

    fn pending_timeout(&self) -> bool {
        //TODO
        false
    }
}
