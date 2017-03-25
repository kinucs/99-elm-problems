module Tests19 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import RotateList exposing (..)


all : Test
all =
    describe "Problem 19 tests"
        [ testRotate 3 [ 1, 2, 5, 5, 2, 1 ] <|
            [ 5, 2, 1, 1, 2, 5 ]
        , testRotate 13 (List.range 1 10) <|
            [ 4, 5, 6, 7, 8, 9, 10, 1, 2, 3 ]
        , testRotate 1 (List.range 1 5) <|
            [ 2, 3, 4, 5, 1 ]
        , testRotate 0 (List.range 1 5) <|
            [ 1, 2, 3, 4, 5 ]
        , testRotate -1 (List.range 1 5) <|
            [ 5, 1, 2, 3, 4 ]
        , testRotate -6 (List.range 1 5) <|
            [ 5, 1, 2, 3, 4 ]
        , testRotate 3 (List.range 1 5) <|
            [ 4, 5, 1, 2, 3 ]
        , testRotate 1 [ "1", "2", "3", "4" ] <|
            [ "2", "3", "4", "1" ]
        ]


testRotate : Int -> List a -> List a -> Test
testRotate rot actual expected =
    test ("rotate " ++ (toString rot) ++ " " ++ (toString actual) ++ " == " ++ (toString expected)) <|
        \() ->
            Expect.equal (rotate rot actual) expected
