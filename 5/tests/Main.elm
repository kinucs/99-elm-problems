port module Main exposing (..)

import Tests5
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
    run emit Tests5.all


port emit : ( String, Value ) -> Cmd msg
