# Twelve Days of Christmas exercise on exercism
class TwelveDays
  DAYS_GOODIES = [
    ['first', 'a Partridge in a Pear Tree'],
    ['second', 'two Turtle Doves'],
    ['third', 'three French Hens'],
    ['fourth', 'four Calling Birds'],
    ['fifth', 'five Gold Rings'],
    ['sixth', 'six Geese-a-Laying'],
    ['seventh', 'seven Swans-a-Swimming'],
    ['eighth', 'eight Maids-a-Milking'],
    ['ninth', 'nine Ladies Dancing'],
    ['tenth', 'ten Lords-a-Leaping'],
    ['eleventh', 'eleven Pipers Piping'],
    ['twelfth', 'twelve Drummers Drumming']
  ].freeze

  def self.song
    new.song_string
  end

  def song_string
    DAYS_GOODIES.map.with_index do |(day, _), index|
      construct_line(day, day_goodies(index))
    end.join("\n")
  end

  private

  def construct_line(day, goodies)
    "On the #{day} day of Christmas my true love gave to me: #{goodies}.\n"
  end

  def day_goodies(index)
    goodies = DAYS_GOODIES.map { |_, goody| goody }
    if index < 1
      goodies[index]
    else
      (goodies[1..index].reverse + ["and #{goodies[0]}"]).join(', ')
    end
  end
end

