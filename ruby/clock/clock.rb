# Clock class for exercism.io
class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = 0
    @minute = 0

    add!(hour, minute)
  end

  def to_s
    format('%02d:%02d', hour, minute)
  end

  def +(other)
    add!(other.hour, other.minute)

    self
  end

  def -(other)
    add!(-other.hour, -other.minute)

    self
  end

  def ==(other)
    hour.eql?(other.hour) &&
      minute.eql?(other.minute)
  end

  private

  def add!(hrs, mins)
    @hour = (@hour + hrs + ((minute + mins) / 60)) % 24
    @minute = (@minute + mins) % 60
  end
end
