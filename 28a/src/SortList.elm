module SortList exposing (..)

import List exposing (sortBy, length)


sortByListLengths : List (List a) -> List (List a)
sortByListLengths list =
    sortBy length list
