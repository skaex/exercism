# Has it all
class Pangram
  def self.pangram?(phrase)
    phrase
      .downcase
      .scan(/([a-z])(?!.*\1)/)
      .count.eql? 26
  end
end
