module Triangle (rows) where

nextRow :: [Integer] -> [Integer]
nextRow [] = []
nextRow [_] = []
nextRow (x:xy:xs) = x + xy : nextRow(xy:xs)

rows :: Int -> [[Integer]]
rows 0 = []
rows 1 = [[1]]
rows x = 
  let previous = rows (x - 1)
      lastRow = last previous
  in previous ++ [[1] ++ nextRow lastRow ++ [1]]

