module InsertAt exposing (..)


insertAt : Int -> a -> List a -> List a
insertAt position value list =
    List.append (List.take (position - 1) list) (value :: (List.drop (position - 1) list))
