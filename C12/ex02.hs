instance Functor ((->) a) where
    -- fmap :: (b -> c) -> (a -> b) -> (b -> c)
    fmap = (.)