module DecodeRleCodeToList exposing (..)

import List exposing (..)


type RleCode a
    = Run Int a
    | Single a


rleDecode : List (RleCode a) -> List a
rleDecode list =
    case list of
        [] ->
            []

        (Run i v) :: tl ->
            append (repeat i v) (rleDecode tl)

        (Single v) :: tl ->
            v :: (rleDecode tl)
