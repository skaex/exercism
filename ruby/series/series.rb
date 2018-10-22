# Series of series
class Series
  def initialize(str)
    @str = str
  end

  def slices(size)
    raise ArgumentError if size > @str.size

    a = []
    (0..(@str.size - size)).each { |idx| a << @str[idx...(idx + size)] }
    a
  end
end
