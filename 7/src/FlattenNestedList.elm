module FlattenNestedList exposing (..)

import List


type NestedList a
    = Elem a
    | SubList (List (NestedList a))


flatten : NestedList a -> List a
flatten nestedList =
    case nestedList of
        Elem a ->
            [ a ]

        SubList subList ->
            List.concatMap flatten subList
