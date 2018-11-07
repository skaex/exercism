# Anagrams that match
class Anagram
  def initialize(word)
    @word = word
  end

  def match(words)
    words.select do |word|
      word.downcase.split('').sort.eql?(@word.downcase.split('').sort) &&
        !word.casecmp(@word).zero?
    end
  end
end
