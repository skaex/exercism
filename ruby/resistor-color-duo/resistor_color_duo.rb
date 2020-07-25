# frozen_string_literal: true

# Resistor Color Duo exercise from exercism.io
# ResistorColorDuo class calculates value of a resistor
class ResistorColorDuo
  VALUES = %w[
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  ].freeze

  def self.value(bands)
    first, second, = bands

    "#{VALUES.index(first)}#{VALUES.index(second)}".to_i
  end
end
