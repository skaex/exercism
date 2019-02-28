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
    digits_length_ok? &&
      digits_luhn_valid? &&
      only_digits?
  end

  private

  def digits_length_ok?
    digits.size > 1
  end

  def only_digits?
    input_wos.size.eql?(digits.size)
  end

  def digits_luhn_valid?
    (digits_luhn_sum % 10).zero?
  end

  def digits_luhn_sum
    digits
      .reverse
      .each_with_index
      .map { |digit, index| calculate_luhn_double(index + 1, digit.to_i) }
      .sum
  end

  def calculate_luhn_double(index, digit)
    return ((digit * 2) > 9 ? digit * 2 - 9 : digit * 2) if (index % 2).zero?

    digit
  end
end
