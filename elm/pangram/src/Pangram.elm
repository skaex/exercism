module Pangram exposing (isPangram)


isPangram : String -> Bool
isPangram sentence =
    String.all
        (\c ->
            String.contains (String.fromChar c)
                (String.toLower
                    sentence
                )
        )
        "abcdefghijklmnopqrstuvwxyz"
