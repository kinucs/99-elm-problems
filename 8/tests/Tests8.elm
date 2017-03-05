module Tests8 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import RemoveConsecutiveDuplicates exposing (..)


all : Test
all =
    describe "Problem 8 tests"
        [ describe "remove consecutive duplicates tests"
            [ test "noDupes [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ]" <|
                \() ->
                    let
                        actual =
                            noDupes [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ]

                        expected =
                            [ 1, 2, 5, 2, 1 ]
                    in
                        Expect.equal actual expected
            , test "noDupes [ 2, 1, 1, 1 ]" <|
                \() ->
                    let
                        actual =
                            noDupes [ 2, 1, 1, 1 ]

                        expected =
                            [ 2, 1 ]
                    in
                        Expect.equal actual expected
            , test "noDupes [ 1 ] " <|
                \() ->
                    let
                        actual =
                            noDupes [ 1 ]

                        expected =
                            [ 1 ]
                    in
                        Expect.equal actual expected
            , test "noDupes  [ 'aa', 'aa', 'aa' ] " <|
                \() ->
                    let
                        actual =
                            noDupes [ "aa", "aa", "aa" ]

                        expected =
                            [ "aa" ]
                    in
                        Expect.equal actual expected
            , test "noDupes  [ 'aab', 'b', 'b', 'aa' ]" <|
                \() ->
                    let
                        actual =
                            noDupes [ "aab", "b", "b", "aa" ]

                        expected =
                            [ "aab", "b", "aa" ]
                    in
                        Expect.equal actual expected
            ]
        ]
