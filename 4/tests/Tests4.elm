module Tests4 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import CountElements exposing (..)


all : Test
all =
    describe "Problem 4 tests"
        [ test "countElements (List.range 1 4000)" <|
            \() ->
                Expect.equal (countElements (List.range 1 4000)) 4000
        , test "countElements [ 1 ]" <|
            \() ->
                Expect.equal (countElements [ 1 ]) 1
        , test "countElements []" <|
            \() ->
                Expect.equal (countElements []) 0
        , test "countElements [ 'a', 'b', 'c' ]" <|
            \() ->
                Expect.equal (countElements [ 'a', 'b', 'c' ]) 3
        ]
