module Accumulate exposing (accumulate)


accumulate : (a -> b) -> List a -> List b
accumulate func input =
    accumulateHelper func [] input


accumulateHelper : (a -> b) -> List b -> List a -> List b
accumulateHelper func result input =
    case input of
        [] ->
            List.reverse result

        head :: tail ->
            accumulateHelper func (func head :: result) tail
