module WordCount
  ( wordCount
  ) where

import           Data.Char
import           Data.List

allowedWord :: Char -> Char
allowedWord c
  | isAlphaNum c || isSpace c || c == '\'' = c
  | otherwise = ' '

removeQuotes :: String -> String
removeQuotes s =
  if head s == '\'' || last s == '\''
    then tail . init $ s
    else s

normalizeToWords :: String -> [String]
normalizeToWords = map removeQuotes . words . map (toLower . allowedWord)

toTupleCount :: [String] -> (String, Int)
toTupleCount xs = (head xs, length xs)

wordCount :: String -> [(String, Int)]
wordCount = map toTupleCount . group . sort . normalizeToWords
