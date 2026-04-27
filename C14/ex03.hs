import Data.Foldable
import Data.Traversable

instance Foldable Maybe where
    foldMap _ Nothing = mempty
    foldMap f (Just x) = Just $ f x

    fold Nothing = mempty
    fold (Just x) = x

    foldr _ _ Nothing = mempty
    foldr f v (Just x) = f x v

    foldl _ _ Nothing = mempty
    foldl f v (Just x) = f v x

instance Traversable Maybe where
    traverse _ Nothing = pure Nothing
    traverse g (Just x) = Just <$> g x