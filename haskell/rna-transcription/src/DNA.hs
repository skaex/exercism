module DNA
  ( toRNA
  ) where

transcribe :: Char -> Maybe Char
transcribe dna =
  case dna of
    'G' -> Just 'C'
    'C' -> Just 'G'
    'T' -> Just 'A'
    'A' -> Just 'U'
    _ -> Nothing

transcribeToRNA :: String -> String -> Either Char String
transcribeToRNA [] rna = Right rna
transcribeToRNA (x:xs) rna =
  case transcribe x of
    Just trna -> transcribeToRNA xs (rna ++ [trna])
    Nothing -> Left x

toRNA :: String -> Either Char String
toRNA xs = transcribeToRNA xs []
