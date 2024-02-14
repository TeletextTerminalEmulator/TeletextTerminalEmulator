use alacritty_terminal::event::{Event, EventListener};

pub struct TeletextTerminalListener;

impl EventListener for TeletextTerminalListener {
    fn send_event(&self, event: Event) {
        match event {
            Event::MouseCursorDirty => {}
            Event::Title(_) => {}
            Event::ResetTitle => {}
            Event::ClipboardStore(_, _) => {}
            Event::ClipboardLoad(_, _) => {}
            Event::ColorRequest(_, _) => {}
            Event::PtyWrite(_) => {}
            Event::TextAreaSizeRequest(_) => {}
            Event::CursorBlinkingChange => {}
            Event::Wakeup => {}
            Event::Bell => {}
            Event::Exit => {}
        }
    }
}