module RepeatElements exposing (..)

import List exposing (..)


repeatElements : Int -> List a -> List a
repeatElements count list =
    foldl (\x dup -> append dup (repeat count x)) [] list
