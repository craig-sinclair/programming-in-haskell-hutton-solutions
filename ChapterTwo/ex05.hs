alternativeInit :: [a] -> [a]
alternativeInit [] = []
alternativeInit xs = reverse(tail (reverse xs))

alternativeInitTwo :: [a] -> [a]
alternativeInitTwo [] = []
alternativeInitTwo xs = reverse (drop 1 (reverse xs))