module QuickPrime exposing (..)


squereRoot : Int -> Int
squereRoot n =
    ceiling <| sqrt (toFloat n)


hasDivisor : Int -> Int -> Bool
hasDivisor n i =
    if i >= squereRoot n then
        False
    else if rem n i == 0 then
        True
    else
        hasDivisor n (i + 1)


isPrime : Int -> Bool
isPrime n =
    if n < 2 then
        False
    else
        not <| hasDivisor n 2
