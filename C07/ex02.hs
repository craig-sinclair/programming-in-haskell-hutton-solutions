all' :: (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' p (x:xs) | not (p x) = False
              | otherwise = all' p xs

any' :: (a -> Bool) -> [a] -> Bool
any' _ [] = False
any' p (x:xs) | p x       = True
              | otherwise = any' p xs

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' p (x:xs) | not (p x) = []
                    | otherwise = x : takeWhile' p xs

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' p (x:xs) | p x       = dropWhile' p xs
                    | otherwise = x : xs