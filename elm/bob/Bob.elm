module Bob exposing (hey)


hey : String -> String
hey remark =
    let
        newRemark =
            String.trim remark
    in
    if isNothing newRemark then
        "Fine. Be that way!"

    else if isYellQuestion newRemark then
        "Calm down, I know what I'm doing!"

    else if isQuestion newRemark then
        "Sure."

    else if isYell newRemark then
        "Whoa, chill out!"

    else
        "Whatever."


isNothing : String -> Bool
isNothing remark =
    String.length remark == 0


isQuestion : String -> Bool
isQuestion =
    String.endsWith "?"


isYell : String -> Bool
isYell remark =
    String.toUpper remark == remark && String.any Char.isAlpha remark


isYellQuestion : String -> Bool
isYellQuestion remark =
    isYell remark && isQuestion remark
