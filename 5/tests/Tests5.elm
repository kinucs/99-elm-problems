module Tests5 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import ReverseList exposing (..)


all : Test
all =
    describe "Problem 5 tests"
        [ test "myReverse [1, 2, 3, 4]" <|
            \() ->
                Expect.equal (reverseList [ 1, 2, 3, 4 ]) [ 4, 3, 2, 1 ]
        , test "reverseList [ 2, 1 ]" <|
            \() ->
                Expect.equal (reverseList [ 2, 1 ]) [ 1, 2 ]
        , test "reverseList [ 1 ]" <|
            \() ->
                Expect.equal (reverseList [ 1 ]) [ 1 ]
        , test "reverseList [ 'a', 'b', 'c' ]" <|
            \() ->
                Expect.equal (reverseList [ 'a', 'b', 'c' ]) [ 'c', 'b', 'a' ]
        ]
