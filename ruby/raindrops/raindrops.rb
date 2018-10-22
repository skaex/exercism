# Rain in Pl_ng
class Raindrops
  class << self
    def convert(number)
      response = mappings.keys.map do |key|
        mappings[key] if (number % key).zero?
      end.compact.join
      return number.to_s if response.empty?

      response
    end

    private

    def mappings
      {
        3 => 'Pling',
        5 => 'Plang',
        7 => 'Plong'
      }
    end
  end
end

