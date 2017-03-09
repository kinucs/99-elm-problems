module DuplicateList exposing (..)

import List exposing (..)


duplicate : List a -> List a
duplicate list =
    List.foldl (\x dup -> append dup [ x, x ]) [] list
