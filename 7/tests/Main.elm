port module Main exposing (..)

import Tests7
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
    run emit Tests7.all


port emit : ( String, Value ) -> Cmd msg
