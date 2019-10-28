# frozen_string_literal: true

# Resistor Color Duo exercise from exercism.io
# ResistorColorDuo class calculates value of a resistor
class ResistorColorDuo
  VALUES = {
    'black' => '0',
    'brown' => '1',
    'red' => '2',
    'orange' => '3',
    'yellow' => '4',
    'green' => '5',
    'blue' => '6',
    'violet' => '7',
    'grey' => '8',
    'white' => '9'
  }.freeze

  def self.value(bands)
    first, second, = bands

    new(first, second).value
  end

  def initialize(first, second)
    @first = first
    @second = second
  end

  def value
    total_value = band_value(first) + band_value(second)

    total_value.to_i
  end

  private

  attr_reader :first, :second

  def band_value(band)
    VALUES.fetch(band, '')
  end
end
