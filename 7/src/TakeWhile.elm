module TakeWhile exposing (..)


takeWhile : (a -> Bool) -> List a -> List a
takeWhile predicate list =
    let
        first =
            List.head list
    in
        case first of
            Just item ->
                if predicate item then
                    item :: (takeWhile predicate (List.drop 1 list))
                else
                    []

            Nothing ->
                []
