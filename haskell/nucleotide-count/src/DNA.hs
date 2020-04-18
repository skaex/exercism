module DNA
  ( nucleotideCounts
  , Nucleotide(..)
  ) where

import           Control.Monad (foldM)
import           Data.Map      (Map, adjust, fromList)

data Nucleotide
  = A
  | C
  | G
  | T
  deriving (Eq, Ord, Show)

charToNucleotide ::
     Char -> Either String Nucleotide
charToNucleotide c =
  case c of
    'A' -> Right A
    'C' -> Right C
    'G' -> Right G
    'T' -> Right T
    _   -> Left [c]

folderer :: Map Nucleotide Int -> Char -> Either String (Map Nucleotide Int)
folderer m c = do
  nucleotide <- charToNucleotide c
  return $ adjust (+ 1) nucleotide m

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts =
  foldM folderer (fromList [(A, 0), (C, 0), (G, 0), (T, 0)])
