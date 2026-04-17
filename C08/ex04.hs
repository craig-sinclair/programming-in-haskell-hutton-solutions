data Tree a = Leaf a | Node (Tree a) (Tree a)
 deriving Show

halveList :: [a] -> ([a], [a])
halveList [] = ([], [])
halveList xs = splitAt (length xs `div` 2) xs


balance :: [a] -> Tree a
balance [x] = Leaf x
balance xs = Node (balance ys) (balance zs)
              where
               (ys, zs) = halveList xs