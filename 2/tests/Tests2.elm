module Tests2 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import PenultimateElement exposing (..)


all : Test
all =
    describe "Problem 1 tests"
        [ test "penultimate [1, 2, 3, 4]" <|
            \() ->
                Expect.equal (penultimate [ 1, 2, 3, 4 ]) (Just 3)
        , test "penultimate [ 1, 2 ]" <|
            \() ->
                Expect.equal (penultimate [ 1, 2 ]) (Just 1)
        , test "penultimate [ 1 ]" <|
            \() ->
                Expect.equal (penultimate [ 1 ]) Nothing
        , test "penultimate []" <|
            \() ->
                Expect.equal (penultimate []) Nothing
        , test "penultimate [ 'a', 'b', 'c' ] " <|
            \() ->
                Expect.equal (penultimate [ "a", "b", "c" ]) (Just "b")
        ]
