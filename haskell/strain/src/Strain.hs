module Strain (keep, discard) where

discard :: (a -> Bool) -> [a] -> [a]
discard _ [] = []
discard p xs
  | not (p x)   = x : discard p xy
  | otherwise   = discard p xy
  where (x:xy)  = xs


keep :: (a -> Bool) -> [a] -> [a]
keep _ [] = []
keep p xs
  | p x         = x : keep p xy
  | otherwise   = keep p xy
  where (x:xy)  = xs
