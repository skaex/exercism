# Exercism SpageAge exercise
class SpaceAge
  def initialize(age)
    @age = age
  end

  def on_mercury
    calculate_seconds(0.2408467)
  end

  def on_venus
    calculate_seconds(0.61519726)
  end

  def on_earth
    calculate_seconds(1)
  end

  def on_mars
    calculate_seconds(1.8808158)
  end

  def on_jupiter
    calculate_seconds(11.862615)
  end

  def on_saturn
    calculate_seconds(29.447498)
  end

  def on_uranus
    calculate_seconds(84.016846)
  end

  def on_neptune
    calculate_seconds(164.79132)
  end

  private

  def calculate_seconds(seconds_per_earth_years)
    @age / (seconds_per_earth_years * 60 * 60 * 24 * 365.25)
  end
end
