module EncodeListToRleCode exposing (..)

import List exposing (..)


type RleCode a
    = Run Int a
    | Single a


toTupple : List a -> ( Int, Maybe a )
toTupple list =
    ( length list, head list )


toRle : Int -> a -> RleCode a
toRle n v =
    case n of
        1 ->
            Single v

        anythingElse ->
            Run n v


removeEmpties : List ( Int, Maybe a ) -> List (RleCode a)
removeEmpties list =
    case list of
        [] ->
            []

        ( n, Nothing ) :: others ->
            removeEmpties others

        ( n, Just v ) :: others ->
            toRle n v :: removeEmpties others


count : List a -> a -> Int
count list elem =
    case list of
        [] ->
            0

        first :: others ->
            if first == elem then
                1 + (count others elem)
            else
                0


pack : List a -> List (List a)
pack list =
    case list of
        [] ->
            []

        first :: others ->
            let
                c =
                    count list first
            in
                [ repeat c first ] ++ (pack (drop c list))


rleEncode : List a -> List (RleCode a)
rleEncode list =
    removeEmpties <|
        map toTupple (pack list)
