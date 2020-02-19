module CollatzConjecture
  ( collatz
  ) where

nextCollatz :: Integer -> Integer
nextCollatz n
  | even n = div n 2
  | otherwise = 3 * n + 1

collatz :: Integer -> Maybe Integer
collatz n
  | n < 1 = Nothing
  | n == 1 = Just 0
  | nc == 1 = Just 1
  | otherwise =
    case collatz nc of
      Just c  -> Just (1 + c)
      Nothing -> Nothing
  where
    nc = nextCollatz n
