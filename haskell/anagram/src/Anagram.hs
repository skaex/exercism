module Anagram (anagramsFor) where
import Data.List
import Data.Char

anagramsFor :: String -> [String] -> [String]
anagramsFor xs = filter (isAnagram (lowerString xs) . lowerString)

lowerString :: String -> String
lowerString = map toLower

isAnagram :: String -> String -> Bool
isAnagram x y
  | x == y = False
  | otherwise = sort x == sort y
