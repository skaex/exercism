module Acronym (abbreviate) where
import Data.Char

abbreviate :: String -> String
abbreviate xs = map (\(x:_) -> toUpper x) . map (filter isAlpha) . words . map (\x -> if x == '-' then ' ' else x) . padder $ xs 

padder :: String -> String
padder = foldl (\acc x -> if isUpper x && isLower (last acc) then acc ++ " " ++ [x] else acc ++ [x]) " "

