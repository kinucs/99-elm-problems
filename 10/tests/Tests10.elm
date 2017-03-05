module Tests10 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import EncodeListToTuple exposing (..)


all : Test
all =
    describe "Problem 9 tests"
        [ describe "encode list of list to list of tuples tests"
            [ test "runLengths [ [ 1, 1, 1, 1 ], [ 2 ], [ 5, 5 ], [ 2 ], [ 1 ] ]" <|
                \() ->
                    let
                        actual =
                            runLengths [ [ 1, 1, 1, 1 ], [ 2 ], [ 5, 5 ], [ 2 ], [ 1 ] ]

                        expected =
                            [ ( 4, 1 ), ( 1, 2 ), ( 2, 5 ), ( 1, 2 ), ( 1, 1 ) ]
                    in
                        Expect.equal actual expected
            , test "runLengths [ [ 2 ], [ 5, 5 ], [ 2 ], [ 1 ] ]" <|
                \() ->
                    let
                        actual =
                            runLengths [ [ 2 ], [ 5, 5 ], [ 2 ], [ 1 ] ]

                        expected =
                            [ ( 1, 2 ), ( 2, 5 ), ( 1, 2 ), ( 1, 1 ) ]
                    in
                        Expect.equal actual expected
            , test "runLengths [ [ 1, 1, 1, 1 ], [ 2 ], [ 5, 5 ] ]" <|
                \() ->
                    let
                        actual =
                            runLengths [ [ 1, 1, 1, 1 ], [ 2 ], [ 5, 5 ] ]

                        expected =
                            [ ( 4, 1 ), ( 1, 2 ), ( 2, 5 ) ]
                    in
                        Expect.equal actual expected
            , test "runLengths [ [ 1, 1, 1, 1 ] ]" <|
                \() ->
                    let
                        actual =
                            runLengths [ [ 1, 1, 1, 1 ] ]

                        expected =
                            [ ( 4, 1 ) ]
                    in
                        Expect.equal actual expected
            , test "runLengths [ [ 'a', 'a', 'a', 'a' ], [ 'b' ], [ 'c', 'c' ], [ 'b' ], [ 'a' ] ]" <|
                \() ->
                    let
                        actual =
                            runLengths [ [ "a", "a", "a", "a" ], [ "b" ], [ "c", "c" ], [ "b" ], [ "a" ] ]

                        expected =
                            [ ( 4, "a" ), ( 1, "b" ), ( 2, "c" ), ( 1, "b" ), ( 1, "a" ) ]
                    in
                        Expect.equal actual expected
            , test "runLengths [ [] ]" <|
                \() ->
                    let
                        actual =
                            runLengths [ [] ]

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "runLengths []" <|
                \() ->
                    let
                        actual =
                            runLengths []

                        expected =
                            []
                    in
                        Expect.equal actual expected
            ]
        ]
