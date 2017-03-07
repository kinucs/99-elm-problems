port module Main exposing (..)

import Tests2
import Test.Runner.Node exposing (run, TestProgram)
import Json.Encode exposing (Value)


main : TestProgram
main =
    run emit Tests2.all


port emit : ( String, Value ) -> Cmd msg
