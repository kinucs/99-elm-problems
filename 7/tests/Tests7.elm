module Tests7 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import FlattenNestedList exposing (..)
import DropWhile exposing (..)
import TakeWhile exposing (..)


isEven x =
    x % 2 == 0


isOdd x =
    x % 2 /= 0


all : Test
all =
    describe "Problem 7 tests"
        [ describe "flatten tests"
            [ test "flatten (SubList [ Elem 1, Elem 2 ]) == [ 1, 2 ]" <|
                \() ->
                    let
                        actual =
                            flatten (SubList [ Elem 1, Elem 2 ])

                        expected =
                            [ 1, 2 ]
                    in
                        Expect.equal actual expected
            , test "flatten (SubList [ Elem 1, Elem 2 ]) == [ 1, 2 ]" <|
                \() ->
                    let
                        actual =
                            flatten (SubList [ Elem 1, Elem 2 ])

                        expected =
                            [ 1, 2 ]
                    in
                        Expect.equal actual expected
            , test "flatten (SubList [ Elem 'a', Elem 'b' ]) == [ 'a', 'b' ]" <|
                \() ->
                    let
                        actual =
                            flatten (SubList [ Elem "a", Elem "b" ])

                        expected =
                            [ "a", "b" ]
                    in
                        Expect.equal actual expected
            , test "flatten (SubList [ ]) == [ ]" <|
                \() ->
                    let
                        actual =
                            flatten (SubList [])

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "flatten (SubList [ ]) == [ ]" <|
                \() ->
                    let
                        numbers_1_9 =
                            SubList
                                [ Elem 1
                                , SubList
                                    [ SubList
                                        [ Elem 2
                                        , SubList [ Elem 3, Elem 4 ]
                                        ]
                                    , Elem 5
                                    ]
                                , Elem 6
                                , SubList [ Elem 7, Elem 8, Elem 9 ]
                                ]

                        actual =
                            flatten numbers_1_9

                        expected =
                            (List.range 1 9)
                    in
                        Expect.equal actual expected
            ]
        , describe "drop while tests"
            [ test "dropWhile isOdd [ 1, 2, 1 ]" <|
                \() ->
                    let
                        actual =
                            dropWhile isOdd [ 1, 2, 1 ]

                        expected =
                            [ 2, 1 ]
                    in
                        Expect.equal actual expected
            , test "dropWhile isEven [1, 2, 1]" <|
                \() ->
                    let
                        actual =
                            dropWhile isEven [ 1, 2, 1 ]

                        expected =
                            [ 1, 2, 1 ]
                    in
                        Expect.equal actual expected
            , test "dropWhile isEven []" <|
                \() ->
                    let
                        actual =
                            dropWhile isEven []

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "dropWhile isEven [2, 4, 100000, 1]" <|
                \() ->
                    let
                        actual =
                            dropWhile isEven [ 2, 4, 100000, 1 ]

                        expected =
                            [ 1 ]
                    in
                        Expect.equal actual expected
            , test "dropWhile (x -> x < 5 ) (List.range 1 10)" <|
                \() ->
                    let
                        actual =
                            dropWhile (\x -> x < 5) (List.range 1 10)

                        expected =
                            [ 5, 6, 7, 8, 9, 10 ]
                    in
                        Expect.equal actual expected
            ]
        , describe "take while tests"
            [ test "takeWhile isOdd [ 1, 2, 1 ]" <|
                \() ->
                    let
                        actual =
                            takeWhile isOdd [ 1, 2, 1 ]

                        expected =
                            [ 1 ]
                    in
                        Expect.equal actual expected
            , test "takeWhile isEven [1, 2, 1]" <|
                \() ->
                    let
                        actual =
                            takeWhile isEven [ 1, 2, 1 ]

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "takeWhile isEven []" <|
                \() ->
                    let
                        actual =
                            takeWhile isEven []

                        expected =
                            []
                    in
                        Expect.equal actual expected
            , test "takeWhile isEven [2, 4, 100000, 1]" <|
                \() ->
                    let
                        actual =
                            takeWhile isEven [ 2, 4, 100000, 1 ]

                        expected =
                            [ 2, 4, 100000 ]
                    in
                        Expect.equal actual expected
            , test "takeWhile (x -> x < 5 ) (List.range 1 10)" <|
                \() ->
                    let
                        actual =
                            takeWhile (\x -> x < 5) (List.range 1 10)

                        expected =
                            [ 1, 2, 3, 4 ]
                    in
                        Expect.equal actual expected
            ]
        ]
