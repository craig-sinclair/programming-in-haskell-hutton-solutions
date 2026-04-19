instance Monad ((->) r) where
    -- return :: a -> (r -> a)
    return = const

    -- (>>=) :: (r -> a) -> (a -> (r -> b)) -> (r -> b)
    (>>=) f g r = g (f r) r