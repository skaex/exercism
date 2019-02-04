# All the phrases and all
class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase
      .downcase
      .scan(/\b[\w']+\b/)
      .each_with_object({}) do |word, object|
        object[word] = object[word].to_i + 1
      end
  end
end
