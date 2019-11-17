module TwelveDays (recite) where

recite :: Int -> Int -> [String]
recite start stop = map sentence dates
  where dates = [start..stop]

sentence :: Int -> String
sentence d = "On the " ++ date ++ " day of Christmas my true love gave to me: " ++ gotten ++ "."
  where gotten = foldl1 (\acc p -> acc ++ ", " ++ p) (goodies d)
        date = day d

goodies :: Int -> [String]
goodies n 
  | n == 1 = [got n]
  | n == 2 = got n : ["and " ++ got (n - 1)]
  | otherwise = got n : goodies (n - 1)

day :: Int -> String
day d = case d of
          1   -> "first"
          2   -> "second"
          3   -> "third"
          4   -> "fourth"
          5   -> "fifth"
          6   -> "sixth"
          7   -> "seventh"
          8   -> "eighth"
          9   -> "ninth"
          10  -> "tenth"
          11  -> "eleventh"
          12  -> "twelfth"
          _   -> "other"

got :: Int -> String
got d = case d of
          1   -> "a Partridge in a Pear Tree"
          2   -> "two Turtle Doves"
          3   -> "three French Hens"
          4   -> "four Calling Birds"
          5   -> "five Gold Rings"
          6   -> "six Geese-a-Laying"
          7   -> "seven Swans-a-Swimming"
          8   -> "eight Maids-a-Milking"
          9   -> "nine Ladies Dancing"
          10  -> "ten Lords-a-Leaping"
          11  -> "eleven Pipers Piping"
          12  -> "twelve Drummers Drumming"
          _   -> "Nothing"

