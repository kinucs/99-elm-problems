port module Main exposing (..)

import Tests19
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
    run emit Tests19.all


port emit : ( String, Value ) -> Cmd msg
