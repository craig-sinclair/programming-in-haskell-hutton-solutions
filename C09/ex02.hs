removeFirstOccurrence :: Eq a => a -> [a] -> [a]
removeFirstOccurrence _ [] = []
removeFirstOccurrence x (y:ys) | x == y    = ys
                               | otherwise = y : removeFirstOccurrence x ys 

isChoice :: Eq a => [a] -> [a] -> Bool
isChoice [] _ = True
isChoice _ [] = False
isChoice (x:xs) ys = elem x ys && isChoice xs (removeFirstOccurrence x ys)
