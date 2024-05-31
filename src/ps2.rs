use alacritty_terminal::term::TermMode;
use pc_keyboard::layouts::Us104Key;
use pc_keyboard::Modifiers as PcModifiers;
use pc_keyboard::{
    DecodedKey, KeyCode, KeyEvent, KeyState, KeyboardLayout, ScancodeSet, ScancodeSet2,
};
use vte_input::key::{FunctionalKey, KeyType as VteKeyType};
use vte_input::sequence::{EventType, KeyboardModifiers as VteModifiers};
use vte_input::{KeyEvent as VteKeyEvent, ReportingMode};

#[derive(Debug, Clone, Default)]
struct Modifiers {
    lshift: bool,
    rshift: bool,
    lalt: bool,
    ralt: bool,
    lctrl: bool,
    rctrl: bool,
    lwin: bool,
    rwin: bool,
    rctrl2: bool,
    caps_lock: bool,
    num_lock: bool,
}

impl Modifiers {
    fn apply_key_event(&mut self, event: &mut KeyEvent) {
        match event {
            KeyEvent {
                code: KeyCode::LShift,
                state,
            } => {
                self.lshift = *state == KeyState::Down;
            }
            KeyEvent {
                code: KeyCode::RShift,
                state,
            } => {
                self.rshift = *state == KeyState::Down;
            }
            KeyEvent {
                code: KeyCode::LAlt,
                state,
            } => {
                self.lalt = *state == KeyState::Down;
            }
            KeyEvent {
                code: KeyCode::RAltGr,
                state,
            } => {
                self.ralt = *state == KeyState::Down;
            }
            KeyEvent {
                code: KeyCode::LControl,
                state,
            } => {
                self.lctrl = *state == KeyState::Down;
            }
            KeyEvent {
                code: KeyCode::RControl,
                state,
            } => {
                self.rctrl = *state == KeyState::Down;
            }
            KeyEvent {
                code: KeyCode::LWin,
                state,
            } => {
                self.lwin = *state == KeyState::Down;
            }
            KeyEvent {
                code: KeyCode::RWin,
                state,
            } => {
                self.rwin = *state == KeyState::Down;
            }
            KeyEvent {
                code: KeyCode::RControl2,
                state,
            } => {
                self.rctrl2 = *state == KeyState::Down;
            }
            KeyEvent {
                code: KeyCode::CapsLock,
                state: KeyState::Down,
            } => {
                self.caps_lock = !self.caps_lock;
            }
            KeyEvent {
                code: KeyCode::NumpadLock,
                state: KeyState::Down,
            } => {
                if self.rctrl2 {
                    // It's a Pause key because we got the 'hidden' rctrl2
                    // sequence first.
                    event.code = KeyCode::PauseBreak;
                } else {
                    // It's a numlock toggle
                    self.num_lock = !self.num_lock;
                }
            }
            _ => {}
        }
    }
}

impl From<&Modifiers> for VteModifiers {
    fn from(value: &Modifiers) -> Self {
        let mut vte_mods = Self::empty();

        vte_mods.set(VteModifiers::SHIFT, value.lshift || value.rshift);
        vte_mods.set(VteModifiers::ALT, value.lalt || value.ralt);
        vte_mods.set(VteModifiers::CTRL, value.lctrl || value.rctrl);
        vte_mods.set(VteModifiers::SUPER, value.lwin || value.rwin);
        vte_mods.set(VteModifiers::CAPS_LOCK, value.caps_lock);
        vte_mods.set(VteModifiers::NUM_LOCK, value.num_lock);

        vte_mods
    }
}

impl From<&Modifiers> for PcModifiers {
    fn from(value: &Modifiers) -> Self {
        Self {
            lshift: value.lshift,
            rshift: value.rshift,
            lctrl: value.lctrl,
            rctrl: value.rctrl,
            numlock: value.num_lock,
            capslock: value.caps_lock,
            lalt: value.lalt,
            ralt: value.ralt,
            rctrl2: value.rctrl2,
        }
    }
}

pub struct KeyEventContext {
    key_with_modifiers: VteKeyType,
    key_without_modifiers: VteKeyType,
    key_base_layout: VteKeyType,

    modifiers: VteModifiers,
    event_type: KeyState,
}

impl VteKeyEvent for KeyEventContext {
    fn key_with_modifiers(&self) -> VteKeyType {
        self.key_with_modifiers
    }

    fn key_without_modifiers(&self) -> VteKeyType {
        self.key_without_modifiers
    }

    fn key_base_layout(&self) -> VteKeyType {
        self.key_base_layout
    }

    fn modifiers(&self) -> VteModifiers {
        self.modifiers
    }

    fn event_type(&self) -> vte_input::sequence::EventType {
        match self.event_type {
            KeyState::Up => EventType::Release,
            KeyState::Down => EventType::Press,
            KeyState::SingleShot => EventType::Press,
        }
    }

    fn associated_text(&self) -> Option<vte_input::sequence::AssociatedText> {
        None
    }
}

pub struct PS2<T: KeyboardLayout> {
    interface: litex_basys3_pac::PS2,
    scancode_set: ScancodeSet2,
    modifiers: Modifiers,
    layout: T,
    base_layout: Us104Key,
}

impl<T: KeyboardLayout> PS2<T> {
    pub fn new(interface: litex_basys3_pac::PS2, layout: T) -> Self {
        Self {
            interface,
            scancode_set: ScancodeSet2::new(),
            modifiers: Modifiers::default(),
            layout,
            base_layout: Us104Key,
        }
    }

    pub fn try_read(&mut self) -> Option<KeyEventContext> {
        while self
            .interface
            .data_available()
            .read()
            .data_available()
            .bit_is_set()
        {
            let scancode = self.interface.scancode().read().scancode().bits();

            if let Some(mut event) = self
                .scancode_set
                .advance_state(scancode)
                .expect("Interface should always output valid scancodes")
            {
                self.modifiers.apply_key_event(&mut event);

                let keycode = event.code;

                let key_with_modifiers = self.layout.map_keycode(
                    keycode,
                    &(&self.modifiers).into(),
                    pc_keyboard::HandleControl::MapLettersToUnicode,
                );
                let key_without_modifiers = self.layout.map_keycode(
                    keycode,
                    &PcModifiers::default(),
                    pc_keyboard::HandleControl::MapLettersToUnicode,
                );
                let key_base_layout = self.base_layout.map_keycode(
                    keycode,
                    &PcModifiers::default(),
                    pc_keyboard::HandleControl::MapLettersToUnicode,
                );

                return Some(KeyEventContext {
                    key_with_modifiers: convert_key_code(&key_with_modifiers),
                    key_without_modifiers: convert_key_code(&key_without_modifiers),
                    key_base_layout: convert_key_code(&key_base_layout),
                    modifiers: (&self.modifiers).into(),
                    event_type: event.state,
                });
            }
        }

        None
    }
}

fn convert_key_code(decoded_key: &DecodedKey) -> VteKeyType {
    match decoded_key {
        DecodedKey::Unicode(ch) => VteKeyType::Unicode(*ch),
        DecodedKey::RawKey(key_code) => VteKeyType::Functional(match key_code {
            KeyCode::Escape => FunctionalKey::Escape,
            KeyCode::F1 => FunctionalKey::F1,
            KeyCode::F2 => FunctionalKey::F2,
            KeyCode::F3 => FunctionalKey::F3,
            KeyCode::F4 => FunctionalKey::F4,
            KeyCode::F5 => FunctionalKey::F5,
            KeyCode::F6 => FunctionalKey::F6,
            KeyCode::F7 => FunctionalKey::F7,
            KeyCode::F8 => FunctionalKey::F8,
            KeyCode::F9 => FunctionalKey::F9,
            KeyCode::F10 => FunctionalKey::F10,
            KeyCode::F11 => FunctionalKey::F11,
            KeyCode::F12 => FunctionalKey::F12,
            KeyCode::PrintScreen => FunctionalKey::PrintScreen,
            KeyCode::ScrollLock => FunctionalKey::ScrollLock,
            KeyCode::PauseBreak => FunctionalKey::Pause,
            KeyCode::Backspace => FunctionalKey::Backspace,
            KeyCode::Insert => FunctionalKey::Insert,
            KeyCode::Home => FunctionalKey::Home,
            KeyCode::PageUp => FunctionalKey::PageUp,
            KeyCode::NumpadLock => FunctionalKey::NumLock,
            KeyCode::NumpadDivide => FunctionalKey::NumPadDivide,
            KeyCode::NumpadMultiply => FunctionalKey::NumPadMultply,
            KeyCode::NumpadSubtract => FunctionalKey::NumPadSubtract,
            KeyCode::Tab => FunctionalKey::Tab,
            KeyCode::Delete => FunctionalKey::Delete,
            KeyCode::End => FunctionalKey::End,
            KeyCode::PageDown => FunctionalKey::PageDown,
            KeyCode::Numpad7 => FunctionalKey::NumPad7,
            KeyCode::Numpad8 => FunctionalKey::NumPad8,
            KeyCode::Numpad9 => FunctionalKey::NumPad9,
            KeyCode::NumpadAdd => FunctionalKey::NumPadAdd,
            KeyCode::CapsLock => FunctionalKey::CapsLock,
            KeyCode::Return => FunctionalKey::Enter,
            KeyCode::Numpad4 => FunctionalKey::NumPad4,
            KeyCode::Numpad5 => FunctionalKey::NumPad5,
            KeyCode::Numpad6 => FunctionalKey::NumPad6,
            KeyCode::LShift => FunctionalKey::LeftShift,
            KeyCode::RShift => FunctionalKey::RightShift,
            KeyCode::ArrowUp => FunctionalKey::Up,
            KeyCode::Numpad1 => FunctionalKey::NumPad1,
            KeyCode::Numpad2 => FunctionalKey::NumPad2,
            KeyCode::Numpad3 => FunctionalKey::NumPad3,
            KeyCode::NumpadEnter => FunctionalKey::NumPadEnter,
            KeyCode::LControl => FunctionalKey::LeftControl,
            KeyCode::LWin => FunctionalKey::LeftSuper,
            KeyCode::LAlt => FunctionalKey::LeftAlt,
            KeyCode::RAltGr => FunctionalKey::RightAlt,
            KeyCode::RWin => FunctionalKey::RightSuper,
            KeyCode::Apps => FunctionalKey::Menu,
            KeyCode::RControl => FunctionalKey::RightControl,
            KeyCode::ArrowLeft => FunctionalKey::Left,
            KeyCode::ArrowDown => FunctionalKey::Down,
            KeyCode::ArrowRight => FunctionalKey::Right,
            KeyCode::Numpad0 => FunctionalKey::NumPad0,
            KeyCode::NumpadPeriod => FunctionalKey::NumPadSeparator,
            KeyCode::PrevTrack => FunctionalKey::MediaTrackPrevious,
            KeyCode::NextTrack => FunctionalKey::MediaTrackNext,
            KeyCode::Mute => FunctionalKey::MuteVolume,
            KeyCode::Play => FunctionalKey::MediaPlay,
            KeyCode::Stop => FunctionalKey::MediaStop,
            KeyCode::VolumeDown => FunctionalKey::LowerVolume,
            KeyCode::VolumeUp => FunctionalKey::RaiseVolume,
            _ => return VteKeyType::Unknown,
        }),
    }
}

pub fn convert_term_mode(term_mode: &TermMode) -> ReportingMode {
    let mut reporting_mode = ReportingMode::empty();

    macro_rules! transfer {
        ($mode:ident) => {
            reporting_mode.set(ReportingMode::$mode, term_mode.contains(TermMode::$mode));
        };
    }

    transfer!(DISAMBIGUATE_ESC_CODES);
    transfer!(REPORT_EVENT_TYPES);
    transfer!(REPORT_ALTERNATE_KEYS);
    transfer!(REPORT_ALL_KEYS_AS_ESC);
    transfer!(REPORT_ASSOCIATED_TEXT);

    reporting_mode
}
