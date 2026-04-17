reverseQsort :: Ord a => [a] -> [a] 
reverseQsort [] = []
reverseQsort (x:xs) = reverseQsort larger ++ [x] ++ reverseQsort smaller
                       where
                        smaller = [a | a <- xs, a <= x]
                        larger = [b | b <- xs, b > x]