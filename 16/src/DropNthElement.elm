module DropNthElement exposing (..)

import List exposing (..)


repeatElements : Int -> List a -> List a
repeatElements count list =
    foldl (\x dup -> append dup (repeat count x)) [] list


dropNth : List a -> Int -> List a
dropNth list n =
    skipEveryNth list [] n 1


skipEveryNth : List a -> List a -> Int -> Int -> List a
skipEveryNth list temp n index =
    case list of
        [] ->
            temp

        first :: others ->
            if (index % n) == 0 then
                skipEveryNth others temp n (index + 1)
            else
                skipEveryNth others (append temp [ first ]) n (index + 1)
