altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap f g (x:xs) = f x : altMap g f xs

luhnDouble :: Int -> Int
luhnDouble n | n*2 > 9   = n*2 - 9
             | otherwise = n*2

luhn :: [Int] -> Bool
luhn xs = sum (altMap id luhnDouble (reverse xs)) `mod` 10 == 0