# Clock class for exercism.io
class Clock
  def initialize(hour: 0, minute: 0)
    @minutes = 0

    add!(hour, minute)
  end

  def hour
    (@minutes / 60) % 24
  end

  def minute
    @minutes - (@minutes / 60) * 60
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
    @minutes += (hrs * 60) + mins
  end
end
