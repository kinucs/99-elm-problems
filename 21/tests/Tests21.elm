module Tests21 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import InsertAt exposing (..)


all : Test
all =
    describe "Problem 21 tests"
        [ testInsertAt 2 99 [ 1, 2, 5, 5, 2, 1 ] <|
            [ 1, 99, 2, 5, 5, 2, 1 ]
        , testInsertAt 3 99 (List.range 1 14) <|
            [ 1, 2, 99, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ]
        , testInsertAt 6 99 (List.range 1 5) <|
            [ 1, 2, 3, 4, 5, 99 ]
        , testInsertAt 0 99 (List.range 1 5) <|
            [ 99, 1, 2, 3, 4, 5 ]
        , testInsertAt -1 99 (List.range 1 5) <|
            [ 99, 1, 2, 3, 4, 5 ]
        , testInsertAt 1 99 (List.range 1 5) <|
            [ 99, 1, 2, 3, 4, 5 ]
        , testInsertAt 2 "x" [ "1", "2", "3", "4", "5" ] <|
            [ "1", "x", "2", "3", "4", "5" ]
        ]


testInsertAt : Int -> a -> List a -> List a -> Test
testInsertAt positon value actual expected =
    test ("insertAt " ++ (toString positon) ++ " " ++ (toString value) ++ (toString actual) ++ " == " ++ (toString expected)) <|
        \() ->
            Expect.equal (insertAt positon value actual) expected
