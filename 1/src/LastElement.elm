module LastElement exposing (..)

import List exposing (..)


last : List a -> Maybe a
last list =
    head <| reverse list
