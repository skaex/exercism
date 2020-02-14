module Bob
  ( responseFor
  ) where

import Data.Char

data Conversation
  = Question
  | Yelling
  | YellQuestion
  | NoConversation
  | OtherConversation

isAllCaps :: String -> Bool
isAllCaps s
  | null s = False
  | otherwise = all isUpper s

endsWith :: Char -> String -> Bool
endsWith ch = (==) ch . last

isQuestion :: String -> Bool
isQuestion = endsWith '?'

isYell :: String -> Bool
isYell = isAllCaps

isYellQuestion :: String -> Bool
isYellQuestion s = isYell (init s) && isQuestion s

isNoConversation :: String -> Bool
isNoConversation = null

figureConversation :: String -> Conversation
figureConversation s
  | relevant && isYellQuestion xs = YellQuestion
  | relevant && isQuestion xs = Question
  | relevant && isYell xs = Yelling
  | isNoConversation xs && isNoConversation ys = NoConversation
  | otherwise = OtherConversation
  where
    xs = filter (\c -> isAlpha c || c == '?') s
    ys = filter isAlphaNum s
    relevant = not (isNoConversation xs)

responseFor :: String -> String
responseFor xs =
  case figureConversation xs of
    Question -> "Sure."
    Yelling -> "Whoa, chill out!"
    YellQuestion -> "Calm down, I know what I'm doing!"
    NoConversation -> "Fine. Be that way!"
    OtherConversation -> "Whatever."
