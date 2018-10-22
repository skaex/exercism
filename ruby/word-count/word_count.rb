# All the phrases and all
class Phrase
  attr_reader :word_count

  def initialize(phrase)
    @word_count =
      phrase.strip.split(/[\s,]+/).each_with_object({}) do |word, object|
        key = word.gsub(/\A[\W]+|[\W]+\z/, '').downcase
        object[key] = object[key].to_i + 1
      end
  end
end
