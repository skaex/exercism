module PerfectNumbers (classify, Classification(..)) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify n
  | n < 1 = Nothing
  | otherwise = Just (checkClass n (aliquotSum n))

checkClass :: Int -> Int -> Classification
checkClass n s
  | s > n = Abundant
  | s < n = Deficient
  | otherwise = Perfect

aliquotSum :: Int -> Int
aliquotSum n = 
  let factors = [x | x <- [1..n - 1], n `mod` x == 0]
  in sum factors
