module Tests11 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import EncodeListToRleCode exposing (..)


all : Test
all =
    describe "Problem 11 tests"
        [ describe "encode list of list to list of union type tests"
            [ test "rleEncode [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ]" <|
                \() ->
                    let
                        actual =
                            rleEncode [ 1, 1, 1, 1, 2, 5, 5, 2, 1 ]

                        expected =
                            [ Run 4 1, Single 2, Run 2 5, Single 2, Single 1 ]
                    in
                        Expect.equal actual expected
            , test "rleEncode [ 2, 1, 1, 1 ] " <|
                \() ->
                    let
                        actual =
                            rleEncode [ 2, 1, 1, 1 ]

                        expected =
                            [ Single 2, Run 3 1 ]
                    in
                        Expect.equal actual expected
            , test "rleEncode [ 2, 2, 2, 1, 1, 1 ]" <|
                \() ->
                    let
                        actual =
                            rleEncode [ 2, 2, 2, 1, 1, 1 ]

                        expected =
                            [ Run 3 2, Run 3 1 ]
                    in
                        Expect.equal actual expected
            , test "rleEncode [ 1 ] " <|
                \() ->
                    let
                        actual =
                            rleEncode [ 1 ]

                        expected =
                            [ Single 1 ]
                    in
                        Expect.equal actual expected
            , test "rleEncode []" <|
                \() ->
                    let
                        actual =
                            rleEncode []

                        expected =
                            []
                    in
                        Expect.equal actual expected
            ]
        ]
