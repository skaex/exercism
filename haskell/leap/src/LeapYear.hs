module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year =
  isEvenlyDivisibleBy year 4 &&
    (not (isEvenlyDivisibleBy year 100) ||
      isEvenlyDivisibleBy year 400)

isEvenlyDivisibleBy :: Integer -> Integer -> Bool
isEvenlyDivisibleBy number divisor =
  number `mod` divisor == 0
