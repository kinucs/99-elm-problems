module Tests15 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import RepeatElements exposing (..)


all : Test
all =
    describe "Problem 15 tests"
        [ describe "repeat elements of a list tests"
            [ test "repeatElements 2 [ 1, 2, 5, 5, 2, 1 ]" <|
                \() ->
                    let
                        actual =
                            repeatElements 2 [ 1, 2, 5, 5, 2, 1 ]

                        expected =
                            [ 1, 1, 2, 2, 5, 5, 5, 5, 2, 2, 1, 1 ]
                    in
                        Expect.equal actual expected
            , test "repeatElements 4 [ 1, 2 ]" <|
                \() ->
                    let
                        actual =
                            repeatElements 4 [ 1, 2 ]

                        expected =
                            [ 1, 1, 1, 1, 2, 2, 2, 2 ]
                    in
                        Expect.equal actual expected
            , test "repeatElements 4 []" <|
                \() ->
                    let
                        actual =
                            repeatElements 4 []

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "repeatElements 0 [ 1, 2 ]" <|
                \() ->
                    let
                        actual =
                            repeatElements 0 [ 1, 2 ]

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "repeatElements (-1) [ 1, 2 ]" <|
                \() ->
                    let
                        actual =
                            repeatElements (-1) [ 1, 2 ]

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "repeatElements 40 [ 1 ]" <|
                \() ->
                    let
                        actual =
                            repeatElements 40 [ 1 ]

                        expected =
                            [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ]
                    in
                        Expect.equal actual expected
            ]
        ]
