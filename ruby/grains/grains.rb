# A grain to feed us all
class Grains
  class << self
    def square(number)
      raise ArgumentError unless number.between?(1, 64)
      return 1 if number.eql? 1

      2 * square(number - 1)
    end

    def total
      (1..64).reduce(0) do |sum, square|
        sum + square(square)
      end
    end
  end
end
