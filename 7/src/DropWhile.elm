module DropWhile exposing (..)


dropWhile : (a -> Bool) -> List a -> List a
dropWhile predicate list =
    let
        first =
            List.head list
    in
        case first of
            Just item ->
                if predicate item then
                    dropWhile predicate <| List.drop 1 list
                else
                    list

            Nothing ->
                list
