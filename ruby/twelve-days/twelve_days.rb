# Twelve Days of Christmas exercise on exercism
class TwelveDays
  DAYS_GIFTS = [
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

  GIFTS = DAYS_GIFTS.map { |_, gift| gift }

  def self.song
    new.song
  end

  def song
    DAYS_GIFTS.map.with_index do |(day, _), index|
      verse(day, day_gifts(index))
    end.join("\n")
  end

  private

  def verse(day, gifts)
    "On the #{day} day of Christmas my true love gave to me: #{gifts}.\n"
  end

  def day_gifts(index)
    *gifts, last_gift = GIFTS[0..index].reverse
    return last_gift if index.zero?

    (gifts + ["and #{last_gift}"]).join(', ')
  end
end
