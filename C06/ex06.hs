and' :: [Bool] -> Bool
and' [] = True
and' (x:xs) | x == False = False
            | otherwise  = and' xs

concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat' xs

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n-1) x

(!!!) :: [a] -> Int -> a
(!!!) (x:_) 0 = x
(!!!) (_:xs) n = (!!!) xs (n-1)

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x (y:ys) | x == y    = True
               | otherwise = elem' x ys