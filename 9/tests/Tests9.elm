module Tests9 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import PackRepeatedElements exposing (..)


all : Test
all =
    describe "Problem 9 tests"
        [ describe "pack repeated elements tests"
            [ test "pack [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ]" <|
                \() ->
                    let
                        actual =
                            pack [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ]

                        expected =
                            [ [ 1, 1, 1, 1 ], [ 2 ], [ 5, 5 ], [ 2 ], [ 1 ] ]
                    in
                        Expect.equal actual expected
            , test "pack [ 2, 1, 1, 1 ]" <|
                \() ->
                    let
                        actual =
                            pack [ 2, 1, 1, 1 ]

                        expected =
                            [ [ 2 ], [ 1, 1, 1 ] ]
                    in
                        Expect.equal actual expected
            , test "pack [ 2, 2, 2, 1, 1, 1 ]" <|
                \() ->
                    let
                        actual =
                            pack [ 2, 2, 2, 1, 1, 1 ]

                        expected =
                            [ [ 2, 2, 2 ], [ 1, 1, 1 ] ]
                    in
                        Expect.equal actual expected
            , test "pack [ 1 ]" <|
                \() ->
                    let
                        actual =
                            pack [ 1 ]

                        expected =
                            [ [ 1 ] ]
                    in
                        Expect.equal actual expected
            , test "pack [ ]" <|
                \() ->
                    let
                        actual =
                            pack []

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "pack [] 'aa', 'aa', 'aa' ]" <|
                \() ->
                    let
                        actual =
                            pack [ "aa", "aa", "aa" ]

                        expected =
                            [ [ "aa", "aa", "aa" ] ]
                    in
                        Expect.equal actual expected
            , test "pack [ 'aab', 'b', 'b', 'aa' ]" <|
                \() ->
                    let
                        actual =
                            pack [ "aab", "b", "b", "aa" ]

                        expected =
                            [ [ "aab" ], [ "b", "b" ], [ "aa" ] ]
                    in
                        Expect.equal actual expected
            ]
        ]
