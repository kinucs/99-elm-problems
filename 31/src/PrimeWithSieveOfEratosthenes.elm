module PrimeWithSieveOfEratosthenes exposing (..)

import List exposing (..)


squereRoot : Int -> Int
squereRoot n =
    ceiling <| sqrt (toFloat n)


remove : List Int -> Int -> List Int
remove list value =
    case list of
        [] ->
            list

        first :: others ->
            if first == value then
                others
            else
                List.append [ first ] (remove others value)


removeAll : List Int -> List Int -> List Int
removeAll list elements =
    List.foldl (\v l -> remove l v) list elements


multiplesOfNumber : Int -> Int -> Int -> List Int -> List Int
multiplesOfNumber i p n temp =
    let
        m =
            i * i + i * p
    in
        if m > n then
            temp
        else
            append [ m ] <| multiplesOfNumber i (p + 1) n temp


removeNotPrimes : Int -> Int -> List Int -> List Int
removeNotPrimes i n candidates =
    if i < squereRoot n then
        removeNotPrimes (i + 1) n (removeAll candidates (multiplesOfNumber i 0 n []))
    else
        candidates


allPrimes : Int -> List Int
allPrimes n =
    removeNotPrimes 2 n (range 2 n)


isPrime : Int -> Bool
isPrime n =
    member n (allPrimes n)
