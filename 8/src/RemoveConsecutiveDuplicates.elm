module RemoveConsecutiveDuplicates exposing (..)

import List exposing (..)


noDupes : List a -> List a
noDupes list =
    if length list < 2 then
        list
    else
        let
            first =
                head list

            second =
                head (drop 1 list)
        in
            case first of
                Just f ->
                    case second of
                        Just s ->
                            if f == s then
                                noDupes <| drop 1 list
                            else
                                f :: (noDupes <| drop 1 list)

                        Nothing ->
                            list

                Nothing ->
                    -- never here
                    []
