module Pangram
  ( isPangram
  ) where

import Data.Char

isPangram :: String -> Bool
isPangram text = all (`elem` lowerCased) ['a' .. 'z']
  where
    lowerCased = [toLower ch | ch <- text]
