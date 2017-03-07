module Tests12 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import DecodeRleCodeToList exposing (..)


all : Test
all =
    describe "Problem 12 tests"
        [ describe "decode list of union type to list"
            [ test " rleDecode [ Run 4 1, Single 2, Run 2 5, Single 2, Single 1 ]" <|
                \() ->
                    let
                        actual =
                            rleDecode [ Run 4 1, Single 2, Run 2 5, Single 2, Single 1 ]

                        expected =
                            [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ]
                    in
                        Expect.equal actual expected
            , test "rleDecode [ Run 4 1, Single 2, Run 2 5, Single 2, Single 1 ]" <|
                \() ->
                    let
                        actual =
                            rleDecode [ Run 4 1, Single 2, Run 2 5, Single 2, Single 1 ]

                        expected =
                            [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ]
                    in
                        Expect.equal actual expected
            , test "rleDecode [ Run 4 '1', Single 'b', Run 2 '5', Single '2', Single 'a' ]" <|
                \() ->
                    let
                        actual =
                            rleDecode [ Run 4 "1", Single "b", Run 2 "5", Single "2", Single "a" ]

                        expected =
                            [ "1", "1", "1", "1", "b", "5", "5", "2", "a" ]
                    in
                        Expect.equal actual expected
            ]
        ]
