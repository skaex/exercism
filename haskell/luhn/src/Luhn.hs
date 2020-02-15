module Luhn
  ( isValid
  ) where

import           Data.Char

onlyDigits :: String -> String
onlyDigits = filter isDigit

toInts :: String -> [Int]
toInts = map digitToInt

doubleMax9 :: Int -> Int
doubleMax9 i =
  if doubled > 9
    then doubled - 9
    else doubled
  where
    doubled = 2 * i

doubleSecondr :: [Int] -> [Int]
doubleSecondr =
  foldr
    (\i acc ->
       if odd . length $ acc
         then doubleMax9 i : acc
         else i : acc)
    []

isValid :: String -> Bool
isValid n = summed `mod` 10 == 0 && length luhnInts > 1
  where
    luhnInts = toInts . onlyDigits $ n
    summed = sum . doubleSecondr $ luhnInts
