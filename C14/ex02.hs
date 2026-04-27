import Data.Monoid

instance Monoid b => Monoid (a -> b) where
    mempty = \_ -> mempty
    f `mappend` g = \x -> (f x `mappend` g x)