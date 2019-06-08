# Triangle class from Exercism exercise
class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    valid? && uniq_sides?(1)
  end

  def isosceles?
    valid? && (uniq_sides?(1) || uniq_sides?(2))
  end

  def scalene?
    valid? && uniq_sides?(3)
  end

  private

  def uniq_sides?(count)
    @sides
      .uniq
      .count
      .eql?(count)
  end

  def valid?
    a, b, c = @sides

    a + b > c &&
      b + c > a &&
      c + a > b
  end
end
