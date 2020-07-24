module SumOfMultiples exposing (sumOfMultiples)


isDivisibleBy : List Int -> Int -> Bool
isDivisibleBy divisors cand =
    List.any (\divisor -> remainderBy divisor cand == 0) divisors


sumOfMultiples : List Int -> Int -> Int
sumOfMultiples divisors limit =
    List.range 1 (limit - 1)
        |> List.filter (isDivisibleBy divisors)
        |> List.sum
