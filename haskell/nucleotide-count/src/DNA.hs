module DNA
  ( nucleotideCounts
  , Nucleotide(..)
  ) where

import Data.Map (Map, adjust, fromList)

data Nucleotide
  = A
  | C
  | G
  | T
  deriving (Eq, Ord, Show)

charToNucleotide :: Char -> Maybe Nucleotide
charToNucleotide c =
  case c of
    'A' -> Just A
    'C' -> Just C
    'G' -> Just G
    'T' -> Just T
    _ -> Nothing

converter :: Char -> Either String (Map Nucleotide Int) -> Either String (Map Nucleotide Int)
converter c (Left s) = Left (c : s)
converter c (Right m) = case charToNucleotide c of
                  Just nucleotide -> Right (adjust (+ 1) nucleotide m) 
                  Nothing -> Left [c]

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts =
   foldr converter (Right (fromList [(A, 0), (C, 0), (G, 0), (T, 0)]))
