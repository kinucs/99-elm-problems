module Tests exposing (..)

import Test exposing (..)
import Expect
import String
import Palindrome exposing (..)


errorPolindrom : List a -> String
errorPolindrom list =
    (toString list) ++ " is palindrome"


errorNotPolindrom : List a -> String
errorNotPolindrom list =
    (toString list) ++ " is not palindrome"


all : Test
all =
    describe "Problem 6 tests"
        [ test "[ 1, 3, 5, 8, 5, 3, 1 ] is palindrome" <|
            \() ->
                let
                    list =
                        [ 1, 3, 5, 8, 5, 3, 1 ]
                in
                    Expect.true (errorNotPolindrom list) (isPalindrome list)
        , test "[ 2, 1 ] is not palindrome" <|
            \() ->
                let
                    list =
                        [ 2, 1 ]
                in
                    Expect.false (errorPolindrom list) (isPalindrome list)
        , test "[ 1 ]  is palindrome" <|
            \() ->
                let
                    list =
                        [ 1 ]
                in
                    Expect.true (errorNotPolindrom list) (isPalindrome list)
        , test "[] is palindrome" <|
            \() ->
                let
                    list =
                        []
                in
                    Expect.true (errorNotPolindrom list) (isPalindrome list)
        , test " [ aa, bb, aa ] is palindrome" <|
            \() ->
                let
                    list =
                        [ "aa", "bb", "aa" ]
                in
                    Expect.true (errorNotPolindrom list) (isPalindrome list)
        , test " [ aab, b, aa ] is palindrome" <|
            \() ->
                let
                    list =
                        [ "aab", "b", "aa" ]
                in
                    Expect.false (errorPolindrom list) (isPalindrome list)
        ]
