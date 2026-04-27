import Data.Foldable
import Data.Traversable

data Tree a = Leaf | Node (Tree a) a (Tree a)
    deriving Show

instance Foldable Tree where
    foldMap _ Leaf = mempty
    foldMap f (Node l x r) = foldMap f l <> f x <> foldMap f r

    fold Leaf = mempty
    fold (Node l x r) = fold l <> x <> fold r

    foldr _ v Leaf = v
    foldr f v (Node l x r) = foldr f (f x (foldr f v r)) l

    foldl _ v Leaf = v
    foldl f v (Node l x r) = foldl f (foldl f (f v x) l) r

-- Tree must be an instance of Functor (with fmap) to be Traversable
instance Functor Tree where
    fmap _ Leaf = Leaf
    fmap f (Node l x r) = Node (fmap f l) (f x) (fmap f r)

instance Traversable Tree where
  traverse f Leaf = pure Leaf
  traverse f (Node l x r) = pure Node <*> traverse f l <*> f x <*> traverse f r