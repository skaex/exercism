# Diff between good and better
class Hamming
  def self.compute(first, second)
    raise ArgumentError unless first.size == second.size

    first
      .split('')
      .zip(second.split(''))
      .count { |alpha, beta| alpha != beta }
  end
end
