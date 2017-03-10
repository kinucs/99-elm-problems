module SubList exposing (..)

import List exposing (..)


sublist : Int -> Int -> List a -> List a
sublist start end list =
    list
        |> take end
        |> drop (start - 1)
