module Tests exposing (..)

import Test exposing (..)
import Expect
import String
import Tests6
import Tests7
import Palindrome exposing (..)


all : Test
all =
    Test.concat [ Tests6.all, Tests7.all ]
