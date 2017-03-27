module Tests28a exposing (..)

import Test exposing (..)
import Expect
import String
import List exposing (..)
import SortList exposing (..)


all : Test
all =
    describe "Problem 28a tests"
        [ testSortByListLengths [ [], [ 1 ], range 1 2, range 1 3, range 1 4, range 1 5 ] <|
            [ 0, 1, 2, 3, 4, 5 ]
        , testSortByListLengths [ [] ] <|
            [ 0 ]
        , testSortByListLengths [ [], [ 1 ], range 1 100000, range 1 4, range 1 3, range 1 2 ] <|
            [ 0, 1, 2, 3, 4, 100000 ]
        , testSortByListLengths [ [ 14 ], [ 15 ], [], [ 1 ], [ 12 ], [ 13 ] ] <|
            [ 0, 1, 1, 1, 1, 1 ]
        , testSortByListLengths [ [ "a", "b", "c" ], [ "a", "b" ], [ "a" ] ] <|
            [ 1, 2, 3 ]
        ]


testSortByListLengths : List (List a) -> List Int -> Test
testSortByListLengths actual expected =
    test ("sortByListLengths " ++ (toString actual) ++ " == " ++ (toString expected)) <|
        \() ->
            Expect.equal (map length (sortByListLengths actual)) expected
