
{-
no comma
-}
fun :: (Integral d) => [d] -> d
fun a = head a

{-
comma (without comma gets changed in comma)
-}
fun' :: (Fractional d) => [d] -> d
fun' a = head a

{-
with and without comma
-}
fun'' :: (Num d) => [d] -> d
fun'' a = head a
