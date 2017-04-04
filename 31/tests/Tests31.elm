module Tests31 exposing (..)

import Test exposing (..)
import Expect
import String
import List
import Prime exposing (..)


all : Test
all =
    describe "Problem 31 tests"
        [ testPrime 36 <| False
        , testPrime 10 <| False
        , testPrime -1 <| False
        , testPrime 1 <| False
        , testPrime 0 <| False
        , testPrime 120 <| False
        , testPrime 2 <| True
        , testPrime 23 <| True
        , testPrime 6000 <| False
        , testPrime 7919 <| True
        , testPrime 7911 <| False
          -- , testPrime 63247 <| True
          -- , testPrime 63249 <| False
        ]


testPrime : Int -> Bool -> Test
testPrime number prime =
    test ("testPrime " ++ (toString number) ++ " == " ++ (toString prime)) <|
        \() ->
            Expect.equal (isPrime number) prime
