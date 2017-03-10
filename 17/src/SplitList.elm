module SplitList exposing (..)

import List exposing (..)


split : List a -> Int -> ( List a, List a )
split list n =
    ( take n list, drop n list )
