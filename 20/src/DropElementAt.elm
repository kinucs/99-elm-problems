module DropElementAt exposing (..)

import List exposing (..)


dropAt : Int -> List a -> List a
dropAt n list =
    if n <= 0 then
        list
    else
        append (take (n - 1) list) (drop n list)
