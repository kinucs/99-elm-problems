module Tests1 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import LastElement exposing (..)


all : Test
all =
    describe "Problem 1 tests"
        [ test "last (1..4)" <|
            \() ->
                Expect.equal (last (List.range 1 4)) (Just 4)
        , test "last [ 1 ]" <|
            \() ->
                Expect.equal (last [ 1 ]) (Just 1)
        , test "last []" <|
            \() ->
                Expect.equal (last []) Nothing
        , test "last [ 'a', 'b', 'c' ]" <|
            \() ->
                Expect.equal (last [ 'a', 'b', 'c' ]) (Just 'c')
        ]
