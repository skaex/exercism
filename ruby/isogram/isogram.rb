# Iso in unique characters
class Isogram
  def self.isogram?(phrase)
    phrase.scan(/(\w).*\1/i).empty?
  end
end
