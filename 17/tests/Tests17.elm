module Tests17 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import SplitList exposing (..)


all : Test
all =
    describe "Problem 17 tests"
        [ describe "split into two list tests"
            [ test "split (List.range 1 5) 0" <|
                \() ->
                    let
                        actual =
                            split (List.range 1 5) 0

                        expected =
                            ( [], [ 1, 2, 3, 4, 5 ] )
                    in
                        Expect.equal actual expected
            , test "split (List.range 1 5) 2" <|
                \() ->
                    let
                        actual =
                            split (List.range 1 5) 2

                        expected =
                            ( [ 1, 2 ], [ 3, 4, 5 ] )
                    in
                        Expect.equal actual expected
            , test "split (List.range 1 5) 5" <|
                \() ->
                    let
                        actual =
                            split (List.range 1 5) 5

                        expected =
                            ( [ 1, 2, 3, 4, 5 ], [] )
                    in
                        Expect.equal actual expected
            , test "split (List.range 1 5) 6" <|
                \() ->
                    let
                        actual =
                            split (List.range 1 5) 6

                        expected =
                            ( [ 1, 2, 3, 4, 5 ], [] )
                    in
                        Expect.equal actual expected
            , test "dropAt -1 (List.range 1 5)" <|
                \() ->
                    let
                        actual =
                            split (List.range 1 5) 6

                        expected =
                            ( [ 1, 2, 3, 4, 5 ], [] )
                    in
                        Expect.equal actual expected
            , test "split (List.range 1 5) (-1)" <|
                \() ->
                    let
                        actual =
                            split (List.range 1 5) (-1)

                        expected =
                            ( [], [ 1, 2, 3, 4, 5 ] )
                    in
                        Expect.equal actual expected
            ]
        ]
