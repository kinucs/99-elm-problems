module Tests14 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import DuplicateList exposing (..)


all : Test
all =
    describe "Problem 14 tests"
        [ describe "duplicate elements of a list tests"
            [ test "duplicate [1, 2, 3, 5, 8, 8]" <|
                \() ->
                    let
                        actual =
                            duplicate [ 1, 2, 3, 5, 8, 8 ]

                        expected =
                            [ 1, 1, 2, 2, 3, 3, 5, 5, 8, 8, 8, 8 ]
                    in
                        Expect.equal actual expected
            , test "duplicate []" <|
                \() ->
                    let
                        actual =
                            duplicate []

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "duplicate [1]" <|
                \() ->
                    let
                        actual =
                            duplicate [ 1 ]

                        expected =
                            [ 1, 1 ]
                    in
                        Expect.equal actual expected
            ]
        ]
