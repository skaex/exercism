module CollatzConjecture
  ( collatz
  ) where

nextCollatz :: Integer -> Integer
nextCollatz n
  | even n = div n 2
  | otherwise = 3 * n + 1

collatzCount :: Integer -> Integer -> Integer
collatzCount 1 c = c
collatzCount n c = collatzCount (nextCollatz n) (c + 1)

collatz :: Integer -> Maybe Integer
collatz n
  | n < 1 = Nothing
  | otherwise = Just (collatzCount n 0)
