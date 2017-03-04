module Tests7 exposing (..)

import Test exposing (..)
import Expect
import String
import FlattenNestedList exposing (..)


nl0 =
    SubList [ Elem 1, Elem 2 ]


nl1 =
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



-- flatten (SubList [ ]) == [ ]


all : Test
all =
    describe "Problem 7 tests"
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



-- flatten (SubList [ ]) == [ ]
