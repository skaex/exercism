use int_enum::IntEnum;
use enum_iterator::IntoEnumIterator;

#[repr(usize)]
#[derive(Copy, Clone, Debug, PartialEq, IntEnum, IntoEnumIterator)]
pub enum ResistorColor {
    Black = 0,
    Blue = 6,
    Brown = 1,
    Green = 5,
    Grey = 8,
    Orange = 3,
    Red = 2,
    Violet = 7,
    White = 9,
    Yellow = 4,
}

pub fn color_to_value(color: ResistorColor) -> usize {
    color.int_value()
}

pub fn value_to_color_string(value: usize) -> String {
    match ResistorColor::from_int(value) {
        Ok(color) => format!("{:?}", color),
        Err(_)=> "value out of range".to_string(),
    }
}

pub fn colors() -> Vec<ResistorColor> {
    let mut colors: Vec<ResistorColor> = ResistorColor::into_enum_iter().collect();
    colors.sort_by(|a, b| a.int_value().cmp(&b.int_value()));
    colors
}
