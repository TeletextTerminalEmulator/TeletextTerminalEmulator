use core::iter::repeat;

use alacritty_terminal::{event::{Event, EventListener}, vte::ansi::Timeout};

use crate::{
    teletext::{self, Teletext},
    teletext_interface::TeletextInterface,
};

const HEADER_OFFSET: u8 = 8;
const HEADER_LENGTH: u8 = teletext::COLUMN_COUNT - HEADER_OFFSET;

pub struct TeletextTerminalListener<T: TeletextInterface>(pub Teletext<T>);

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
            Event::ClipboardStore(_, _) => {}
            Event::ClipboardLoad(_, _) => {}
            Event::ColorRequest(_, _) => {}
            Event::PtyWrite(_) => {}
            Event::TextAreaSizeRequest(_) => {}
            Event::CursorBlinkingChange => {}
            Event::Wakeup => {}
            Event::Bell => {}
            Event::Exit => unimplemented!(),
        }
    }
}


#[derive(Default)]
pub struct LitexTimeout;

impl Timeout for LitexTimeout {

    fn set_timeout(&mut self, duration: core::time::Duration) {
        todo!()
    }

    fn clear_timeout(&mut self) {
        todo!()
    }

    fn pending_timeout(&self) -> bool {
        todo!()
    }
}