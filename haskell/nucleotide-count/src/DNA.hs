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

nucleotideCount ::
     String -> Map Nucleotide Int -> Either String (Map Nucleotide Int)
nucleotideCount [] m = Right m
nucleotideCount (x:xs) m =
  case converted of
    Nothing -> Left (x : xs)
    Just nucleotide -> nucleotideCount xs (adjust (+ 1) nucleotide m)
  where
    converted = charToNucleotide x

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts xs =
  nucleotideCount xs (fromList [(A, 0), (C, 0), (G, 0), (T, 0)])
