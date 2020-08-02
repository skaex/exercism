module RomanNumerals exposing (toRoman)


mapping : List ( Int, String )
mapping =
    [ ( 1000, "M" )
    , ( 900, "CM" )
    , ( 500, "D" )
    , ( 400, "CD" )
    , ( 100, "C" )
    , ( 90, "XC" )
    , ( 50, "L" )
    , ( 40, "XL" )
    , ( 10, "X" )
    , ( 9, "IX" )
    , ( 5, "V" )
    , ( 4, "IV" )
    , ( 1, "I" )
    ]


toRoman : Int -> String
toRoman number =
    let
        filtered =
            mapping
                |> List.filter (\c -> Tuple.first c <= number)
                |> List.head
    in
    case filtered of
        Just ( deduct, roman ) ->
            roman ++ toRoman (number - deduct)

        _ ->
            ""
