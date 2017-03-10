module Tests20 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import DropElementAt exposing (..)


all : Test
all =
    describe "Problem 20 tests"
        [ describe "drop element tests"
            [ test "dropAt 2 [ 1, 2, 5, 5, 2, 1 ]" <|
                \() ->
                    let
                        actual =
                            dropAt 2 [ 1, 2, 5, 5, 2, 1 ]

                        expected =
                            [ 1, 5, 5, 2, 1 ]
                    in
                        Expect.equal actual expected
            , test "dropAt 3 (List.range 1 14)" <|
                \() ->
                    let
                        actual =
                            dropAt 3 (List.range 1 14)

                        expected =
                            [ 1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ]
                    in
                        Expect.equal actual expected
            , test "dropAt 6 (List.range 1 5)" <|
                \() ->
                    let
                        actual =
                            dropAt 6 (List.range 1 5)

                        expected =
                            [ 1, 2, 3, 4, 5 ]
                    in
                        Expect.equal actual expected
            , test "dropAt 0 (List.range 1 5) " <|
                \() ->
                    let
                        actual =
                            dropAt 0 (List.range 1 5) 

                        expected =
                            [ 1, 2, 3, 4, 5 ]
                    in
                        Expect.equal actual expected
            , test "dropAt -1 (List.range 1 5)" <|
                \() ->
                    let
                        actual =
                            dropAt -1 (List.range 1 5)

                        expected =
                            [ 1, 2, 3, 4, 5 ]
                    in
                        Expect.equal actual expected
            , test "dropAt 1 (List.range 1 5)" <|
                \() ->
                    let
                        actual =
                            dropAt 1 (List.range 1 5)

                        expected =
                            [ 2, 3, 4, 5 ]
                    in
                        Expect.equal actual expected
            ]
        ]
