{-# LANGUAGE OverloadedStrings #-}
module Bob
  ( responseFor
  ) where

import Data.Char
import qualified Data.Text as T
import           Data.Text (Text)

data Diction
  = Question
  | Yelling
  | YellQuestion
  | NoDiction
  | OtherDiction

isQuestion :: Text -> Bool
isQuestion = T.isSuffixOf "?" . T.strip

isYell :: Text -> Bool
isYell s = T.any isAlpha s && s == T.toUpper s

isYellQuestion :: Text -> Bool
isYellQuestion s = isYell s && isQuestion s

isNoDiction :: Text -> Bool
isNoDiction = T.all isSpace

figureDiction :: Text -> Diction
figureDiction t
  | isNoDiction t = NoDiction
  | isYellQuestion t = YellQuestion
  | isQuestion t = Question
  | isYell t = Yelling
  | otherwise = OtherDiction

responseFor :: Text -> Text
responseFor xs =
  case figureDiction xs of
    Question -> "Sure."
    Yelling -> "Whoa, chill out!"
    YellQuestion -> "Calm down, I know what I'm doing!"
    NoDiction -> "Fine. Be that way!"
    OtherDiction -> "Whatever."
