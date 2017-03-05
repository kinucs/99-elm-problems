module EncodeListToTuple exposing (..)

import List exposing (..)


toTupple : List a -> ( Int, Maybe a )
toTupple list =
    ( length list, head list )


removeEmpties : List ( Int, Maybe a ) -> List ( Int, a )
removeEmpties list =
    case list of
        [] ->
            []

        first :: others ->
            case first of
                ( n, Nothing ) ->
                    removeEmpties others

                ( n, Just v ) ->
                    ( n, v ) :: removeEmpties others


runLengths : List (List a) -> List ( Int, a )
runLengths list =
    removeEmpties <| map toTupple list
