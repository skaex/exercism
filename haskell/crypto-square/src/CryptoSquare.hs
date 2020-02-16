module CryptoSquare
  ( encode
  ) where

import Data.Char
import Data.List

dimensions :: Int -> (Int, Int)
dimensions s = head possibles
  where
    possibles =
      [(x, y) | x <- [1 .. s], y <- [1 .. s], x - y <= 1, x * y >= s, x >= y]

padToFit :: (Int, Int) -> String -> String
padToFit (c, r) xs = xs ++ padding
  where
    padSize = c * r - length xs
    padding = replicate padSize ' '

parts :: Int -> String -> [String]
parts s xs
  | null xs = []
  | otherwise = take s xs : parts s (drop s xs)

normalize :: String -> String
normalize = map toLower . filter isAlphaNum

encode :: String -> String
encode xs
  | null normalized = []
  | otherwise =
    unwords . transpose . parts (fst dimension) . padToFit dimension $
    normalized
  where
    normalized = normalize xs
    dimension = dimensions (length normalized)
