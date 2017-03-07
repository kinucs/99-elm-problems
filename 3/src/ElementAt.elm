module ElementAt exposing (..)

import List exposing (..)


elementAt : List a -> Int -> Maybe a
elementAt xs n =
    xs
        |> drop (n - 1)
        |> head
