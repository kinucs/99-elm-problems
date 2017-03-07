module Tests3 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import ElementAt exposing (..)


all : Test
all =
    describe "Problem 3 tests"
        [ test "elementAt [1, 2, 3, 4] 2" <|
            \() ->
                Expect.equal (elementAt [ 1, 2, 3, 4 ] 2) (Just 2)
        , test "lelementAt [ 1 ] 2" <|
            \() ->
                Expect.equal (elementAt [ 1 ] 2) Nothing
        , test "elementAt [] 2" <|
            \() ->
                Expect.equal (elementAt [] 2) Nothing
        , test "elementAt [] (-1)" <|
            \() ->
                Expect.equal (elementAt [] (-1)) (Nothing)
        , test "elementAt [ 'a', 'b', 'c' ] 2 == Just 'b'" <|
            \() ->
                Expect.equal (elementAt [ 'a', 'b', 'c' ] 2) (Just 'b')
        ]
