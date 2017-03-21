module Tests16 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import DropNthElement exposing (..)


all : Test
all =
    describe "Problem 16 tests"
        [ describe "r of a list tests"
            [ test "dropNth [ 1, 2, 5, 5, 2, 1 ] 2" <|
                \() ->
                    let
                        actual =
                            dropNth [ 1, 2, 5, 5, 2, 1 ] 2

                        expected =
                            [ 1, 5, 2 ]
                    in
                        Expect.equal actual expected
            , test "dropNth (1..20)" <|
                \() ->
                    let
                        actual =
                            dropNth (List.range 1 20) 3

                        expected =
                            [ 1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20 ]
                    in
                        Expect.equal actual expected
            , test "dropNth (1..5)" <|
                \() ->
                    let
                        actual =
                            dropNth (List.range 1 5) 6

                        expected =
                            [ 1, 2, 3, 4, 5 ]
                    in
                        Expect.equal actual expected
            , test "dropNth (1..5) 1 == []" <|
                \() ->
                    let
                        actual =
                            dropNth (List.range 1 5) 1

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
            , test "  dropNth [ '1', '2', '3', '4', '5', '6' ]" <|
                \() ->
                    let
                        actual =
                            dropNth [ "1", "2", "3", "4", "5", "6" ] 2

                        expected =
                            [ "1", "3", "5" ]
                    in
                        Expect.equal actual expected
            ]
        ]
