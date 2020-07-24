module TwelveDays exposing (recite)


mapper : Int -> ( String, String )
mapper day =
    case day of
        1 ->
            ( "first", "a Partridge in a Pear Tree" )

        2 ->
            ( "second", "two Turtle Doves" )

        3 ->
            ( "third", "three French Hens" )

        4 ->
            ( "fourth", "four Calling Birds" )

        5 ->
            ( "fifth", "five Gold Rings" )

        6 ->
            ( "sixth", "six Geese-a-Laying" )

        7 ->
            ( "seventh", "seven Swans-a-Swimming" )

        8 ->
            ( "eighth", "eight Maids-a-Milking" )

        9 ->
            ( "ninth", "nine Ladies Dancing" )

        10 ->
            ( "tenth", "ten Lords-a-Leaping" )

        11 ->
            ( "eleventh", "eleven Pipers Piping" )

        12 ->
            ( "twelfth", "twelve Drummers Drumming" )

        _ ->
            ( "", "" )


addAndIfMoreThanOne : List String -> List String
addAndIfMoreThanOne lst =
    case lst of
        a :: b :: c ->
            ("and " ++ a) :: b :: c

        _ ->
            lst


gifts : Int -> String
gifts count =
    List.range 1 count
        |> List.map (\idx -> Tuple.second <| mapper idx)
        |> addAndIfMoreThanOne
        |> List.reverse
        |> String.join ", "


line : Int -> String
line day =
    "On the "
        ++ (Tuple.first <| mapper day)
        ++ " day of Christmas my true love gave to me: "
        ++ gifts day
        ++ "."


recite : Int -> Int -> List String
recite start stop =
    List.range start stop
        |> List.map line
