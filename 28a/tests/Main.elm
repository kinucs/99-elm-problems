port module Main exposing (..)

import Tests28a
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
    run emit Tests28a.all


port emit : ( String, Value ) -> Cmd msg
