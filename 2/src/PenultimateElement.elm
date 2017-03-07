module PenultimateElement exposing (..)

import List exposing (..)


penultimate : List a -> Maybe a
penultimate list =
    list
        |> reverse
        |> drop 1
        |> head
