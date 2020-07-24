module SumOfMultiples
  ( sumOfMultiples
  ) where

isMultipleOf :: Integer -> [Integer] -> Bool
isMultipleOf a = any (\x -> a `rem` x == 0)

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  sum [x | x <- [1 .. (pred limit)], isMultipleOf x (filter (> 0) factors)]
