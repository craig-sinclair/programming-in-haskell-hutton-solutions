{-
mult 3 4
= { applying mult }
(\x -> (\y -> x * y)) 3 4
= { applying the outer lambda }
(\y -> 3 * y) 4
= { applying the inner lambda }
(3 * 4)
= { applying * }
12
-}