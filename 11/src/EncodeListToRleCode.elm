module EncodeListToRleCode exposing (..)

import List exposing (..)


type RleCode a
    = Run Int a
    | Single a


toRle : Int -> a -> RleCode a
toRle n v =
    if n == 1 then
        Single v
    else
        Run n v


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


rleEncode : List a -> List (RleCode a)
rleEncode list =
    case list of
        [] ->
            []

        first :: others ->
            let
                nb =
                    count list first
            in
                (::) (toRle nb first) (rleEncode (drop nb list))
