use alloc::rc::Rc;
use core::{cell::RefCell, fmt::Write};

use alacritty_terminal::{
    event::{Event, EventListener, WindowSize},
    vte::ansi::Timeout,
};

use crate::teletext::Teletext;

pub struct TeletextTerminalListener(pub Rc<RefCell<Teletext>>);

impl EventListener for TeletextTerminalListener {
    fn send_event(&self, event: Event) {
        match event {
            Event::MouseCursorDirty => {}
            Event::Title(title) => {
                self.0.borrow_mut().set_title(title);
            }
            Event::ResetTitle => {
                self.0.borrow_mut().set_title("");
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
            Event::Wakeup => {}
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
