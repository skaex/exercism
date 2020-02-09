module Pangram
  ( isPangram
  ) where

import Data.Char

isPangram :: String -> Bool
isPangram text = all (`elem` [toLower ch | ch <- text]) ['a' .. 'z']
