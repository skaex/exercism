# All the phrases and all
class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase.strip.split(/[\s,]+/).each_with_object({}) do |word, object|
      key = word.gsub(/\A[\W]+|[\W]+\z/, '').downcase
      object[key] = object[key].to_i + 1
    end
  end
end
