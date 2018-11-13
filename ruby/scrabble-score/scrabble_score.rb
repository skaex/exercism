class Scrabble # rubocop:disable Documentation
  attr_accessor :score

  def initialize(word)
    word ||= ''
    @score = word.each_char.reduce(0) { |acc, char| acc + self.class.calculate_char_value(char) }
  end

  class << self
    def score(word)
      word.each_char.reduce(0) { |acc, char| acc + calculate_char_value(char) }
    end

    def calculate_char_value(char)
      value_map = [
        [/A|E|I|O|U|L|N|R|S|T/i, 1],
        [/D|G/i, 2],
        [/B|C|M|P/i, 3],
        [/F|H|V|W|Y/i, 4],
        [/K/i, 5],
        [/J|X/i, 8],
        [/Q|Z/i, 10]
      ]

      value_map
        .reduce(0) { |acc, (regex, score)| char.match?(regex) ? acc + score : acc }
    end
  end
end
