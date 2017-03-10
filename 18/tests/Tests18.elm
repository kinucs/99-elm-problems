module Tests18 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import SubList exposing (..)


all : Test
all =
    describe "Problem 18 tests"
        [ describe "slice list tests"
            [ test "sublist 3 7 (List.range 1 10)" <|
                \() ->
                    let
                        actual =
                            sublist 3 7 (List.range 1 10)

                        expected =
                            List.range 3 7
                    in
                        Expect.equal actual expected
            , test "sublist 2 100 [ 'a', 'b', 'c' ]" <|
                \() ->
                    let
                        actual =
                            sublist 2 100 [ 'a', 'b', 'c' ]

                        expected =
                            [ 'b', 'c' ]
                    in
                        Expect.equal actual expected
            , test "sublist -1 2 (List.range 1 100)" <|
                \() ->
                    let
                        actual =
                            sublist -1 2 (List.range 1 100)

                        expected =
                            [ 1, 2 ]
                    in
                        Expect.equal actual expected
            , test "sublist -3 -2 [-3, -2, -1, 0, 1, 2, 3] " <|
                \() ->
                    let
                        actual =
                            sublist -3 -2 [ -3, -2, -1, 0, 1, 2, 3 ]

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "sublist 5 3 [ \" indices \", \" are \", \" inverted \"]" <|
                \() ->
                    let
                        actual =
                            sublist 5 3 [ "indices", " are", "inverted" ]

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "sublist 0 1 (List.range 1 10)" <|
                \() ->
                    let
                        actual =
                            sublist 0 1 (List.range 1 10)

                        expected =
                            [ 1 ]
                    in
                        Expect.equal actual expected
            ]
        ]
