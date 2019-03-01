# Luhn calculates validity of digits using luhns formular
class Luhn
  attr_reader :digits, :input_wos

  def self.valid?(digits)
    new(digits).valid?
  end

  def initialize(digits)
    @input_wos = digits.scan(/\S/)
    @digits = digits.scan(/\d/)
  end

  def valid?
    two_or_more_digits? &&
      only_digits? &&
      (luhn_sum % 10).zero?
  end

  private

  def two_or_more_digits?
    digits.size > 1
  end

  def only_digits?
    input_wos.size.eql?(digits.size)
  end

  def luhn_sum
    digits
      .reverse
      .each_with_index
      .sum { |digit, index| luhn_double(index + 1, digit.to_i) }
  end

  def luhn_double(index, digit)
    if index.even?
      double = digit * 2

      double > 9 ? double - 9 : double
    else
      digit
    end
  end
end
