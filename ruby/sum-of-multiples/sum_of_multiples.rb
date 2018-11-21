class SumOfMultiples # rubocop:disable Documentation
  def initialize(*args)
    @divisors = args
  end

  def to(ending)
    1.upto(ending - 1).reduce(0) do |acc, dividend|
      acc += dividend if @divisors.any? { |divisor| (dividend % divisor).zero? }

      acc
    end
  end
end
