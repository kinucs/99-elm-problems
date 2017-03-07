module ReverseList exposing (..)

import List exposing (..)


reverseList : List a -> List a
reverseList xs =
    List.foldr (\x r -> append r [ x ]) [] xs
