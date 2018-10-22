# Squares: not the ones with same sides
class Squares
  def initialize(number)
    @range = 1.upto(number)
  end

  def square_of_sum
    @range.sum.abs2
  end

  def sum_of_squares
    @range.map(&:abs2).sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
