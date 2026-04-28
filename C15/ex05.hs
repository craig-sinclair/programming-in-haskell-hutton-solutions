data Tree a = Leaf | Node (Tree a) a (Tree a)
    deriving Show

repeatT :: Tree a -> [Tree a]
repeatT Leaf = Leaf : repeatT Leaf
repeatT (Node l v r) = Node l v r : repeatT (Node l v r)

takeT :: Int -> [Tree a]-> [Tree a]
takeT 0 _ = []
takeT _ [] = []
takeT n (x:xs) = x : takeT (n-1) xs

replicateT :: Int -> Tree a -> [Tree a]
replicateT n = takeT n . repeatT