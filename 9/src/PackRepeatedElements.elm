module PackRepeatedElements exposing (..)

import List exposing (..)


count : List a -> a -> Int
count list elem =
    case head list of
        Just h ->
            if h == elem then
                1 + (count (drop 1 list) elem)
            else
                0

        Nothing ->
            0


pack : List a -> List (List a)
pack list =
    if isEmpty list then
        []
    else
        let
            first =
                head list
        in
            case first of
                Just f ->
                    let
                        c =
                            count list f
                    in
                        [ repeat c f ] ++ (pack (drop c list))

                Nothing ->
                    []
