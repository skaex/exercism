# Collatz Conjecture
class CollatzConjecture
  def self.steps(start)
    raise ArgumentError if start < 1

    count = 0
    return count if start.eql?(1)

    loop do
      count += 1
      start = start.even? ? start / 2 : 3 * start + 1

      return count if start.eql?(1)
    end
  end
end

CollatzConjecture.steps(1)