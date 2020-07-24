# frozen_string_literal: true

# The ResistorColor class represent resistors with color bands
class ResistorColor
  MAPPING = {
    'black' => 0,
    'brown' => 1,
    'red' => 2,
    'orange' => 3,
    'yellow' => 4,
    'green' => 5,
    'blue' => 6,
    'violet' => 7,
    'grey' => 8,
    'white' => 9
  }.freeze
  COLORS = MAPPING.keys

  def self.color_code(color)
    MAPPING[color]
  end
end
