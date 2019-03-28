# Clock class for exercism.io
class Clock
  def initialize(hour: 0, minute: 0)
    @minutes = ((hour * 60) + minute) % 1440
  end

  def to_s
    format('%02d:%02d', hour, minute)
  end

  def +(other)
    self.class.new(minute: minutes + other.minutes)
  end

  def -(other)
    self.class.new(minute: minutes - other.minutes)
  end

  def ==(other)
    minutes.eql?(other.minutes)
  end

  protected

  attr_reader :minutes

  private

  def hour
    (minutes / 60) % 24
  end

  def minute
    minutes % 60
  end
end
