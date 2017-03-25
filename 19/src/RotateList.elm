module RotateList exposing (..)

import List exposing (..)


normalize : Int -> Int -> Int
normalize n limit =
    n % limit


rotations : Int -> List a -> Int
rotations n list =
    if n > 0 then
        normalize n (length list)
    else if n == 0 then
        0
    else
        normalize ((length list) - (negate n)) (length list)


rotate : Int -> List a -> List a
rotate n list =
    let
        rot =
            rotations n list
    in
        List.append (drop rot list) (take rot list)
