module Clock (addDelta, fromHourMin, toString) where

newtype Clock = Minutes Int

instance Eq Clock where
  (Minutes m) == (Minutes n) = m == n

fromHourMin :: Int -> Int -> Clock
fromHourMin hour minutes = Minutes ((hour * 60 + minutes) `mod` 1440)

toString :: Clock -> String
toString clock = pad (clockHours clock) ++ ":" ++ pad (clockMinutes clock)

addDelta :: Int -> Int -> Clock -> Clock
addDelta hour mins clock = fromHourMin (clockHours clock + hour) (clockMinutes clock + mins)

clockMinutes :: Clock -> Int
clockMinutes (Minutes m) = m `mod` 60

clockHours :: Clock -> Int
clockHours (Minutes m) = (m `div` 60) `mod` 24

pad :: Int -> String
pad n
  | length num < 2 = '0' : num
  | otherwise = num
  where num = show n
