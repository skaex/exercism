module Pangram (isPangram) where
import Data.Char
import Data.List

isPangram :: String -> Bool
isPangram text = trimmed == ['a'..'z']
  where trimmed = nub . sort . map toLower . filter isAlpha . filter isAscii $ text 
