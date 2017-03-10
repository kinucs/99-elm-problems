port module Main exposing (..)

import Tests20
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
    run emit Tests20.all


port emit : ( String, Value ) -> Cmd msg
