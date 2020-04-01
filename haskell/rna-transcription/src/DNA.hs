module DNA
  ( toRNA
  ) where

transcribe :: Char -> Either Char Char
transcribe dna =
  case dna of
    'G' -> Right 'C'
    'C' -> Right 'G'
    'T' -> Right 'A'
    'A' -> Right 'U'
    _ -> Left dna

toRNA :: String -> Either Char String
toRNA = mapM transcribe
