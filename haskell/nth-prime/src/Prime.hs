module Prime (nth) where

nth :: Int -> Maybe Integer
nth n
  | n < 1 = Nothing
  | otherwise = Just $ last $ take n primes

primes :: [Integer]
primes = filterPrime [2..]
  where filterPrime [] = []
        filterPrime (p:xs) = p : filterPrime [ x | x <- xs, x `mod` p /= 0 ]
