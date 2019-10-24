module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds =
  let earthSeconds = 365.25 * 24 * 60 * 60
  in case planet of
    Mercury   -> seconds / (0.2408467 * earthSeconds)
    Venus     -> seconds / (0.61519726 * earthSeconds)
    Earth     -> seconds / (1.0 * earthSeconds)
    Mars      -> seconds / (1.8808158 * earthSeconds)
    Jupiter   -> seconds / (11.862615 * earthSeconds)
    Saturn    -> seconds / (29.447498 * earthSeconds)
    Uranus    -> seconds / (84.016846 * earthSeconds)
    Neptune   -> seconds / (164.79132 * earthSeconds)

