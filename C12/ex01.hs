data Tree a = Leaf | Node (Tree a) a (Tree a)
    deriving (Show)

instance Functor Tree where
    -- fmap :: (a -> b) -> Tree a -> Tree b
    fmap _ Leaf = Leaf
    fmap g (Node l v r) = Node (fmap g l) (g v) (fmap g r)