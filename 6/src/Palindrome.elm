module Palindrome exposing (..)


isPalindrome : List a -> Bool
isPalindrome list =
    List.reverse list == list
