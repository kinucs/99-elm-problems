port module Main exposing (..)

import Tests4
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
    run emit Tests4.all


port emit : ( String, Value ) -> Cmd msg
