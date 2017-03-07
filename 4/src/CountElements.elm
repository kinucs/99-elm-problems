module CountElements exposing (..)

import List exposing (..)


countElements : List a -> Int
countElements xs =
    case xs of
        [] ->
            0

        hd :: tl ->
            1 + (countElements tl)
