# I see it too
class Matrix
  def initialize(input)
    @grid = input.each_line.map { |a| a.split(' ').map(&:to_i) }
  end

  def rows
    @grid
  end

  def columns
    @grid.transpose
  end
end
