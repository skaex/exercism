# A year in the gregorian calender
class Year
  class << self
    def leap?(year)
      evenly_divisible?(year, 4) unless evenly_divisible?(year, 100) &&
                                        !evenly_divisible?(year, 400)
    end

    private

    def evenly_divisible?(dividend, divisor)
      (dividend % divisor).zero?
    end
  end
end
