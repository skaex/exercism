module Leap exposing (isLeapYear)


isDivisible : Int -> Int -> Bool
isDivisible dividend divisor =
    0 == remainderBy divisor dividend


isLeapYear : Int -> Bool
isLeapYear year =
    let
        isYearDivisible =
            isDivisible year
    in
    isYearDivisible 4 && (not (isYearDivisible 100) || isYearDivisible 400)
