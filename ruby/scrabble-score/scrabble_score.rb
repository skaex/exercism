class Scrabble # rubocop:disable Documentation
  VALUE_MAP = {
    1  => /A|E|I|O|U|L|N|R|S|T/i,
    2  => /D|G/i,
    3  =>  /B|C|M|P/i,
    4  => /F|H|V|W|Y/i,
    5  => /K/i,
    8  => /J|X/i,
    10 => /Q|Z/i
  }.freeze

  attr_accessor :score

  def initialize(word)
    word ||= ''
    @score = word.each_char.sum { |char| calculate_char_value(char) }
  end

  def self.score(word)
    new(word).score
  end

  private

  def calculate_char_value(char)
    VALUE_MAP
      .sum { |score, regex| char.match?(regex) ? score : 0 }
  end
end
