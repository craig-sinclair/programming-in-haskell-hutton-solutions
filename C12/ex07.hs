data Expr a = Var a | Val Int | Add (Expr a) (Expr a)
    deriving Show

instance Functor Expr where
    -- fmap :: (a -> b) -> Expr a -> Expr b
    fmap g (Var x)   = Var (g x)
    fmap _ (Val x)   = Val x
    fmap g (Add l r) = Add (fmap g l) (fmap g r)

instance Applicative Expr where
    -- pure :: a -> Expr a
    pure = Var

    -- (<*>) :: Expr (a -> b) -> Expr a -> Expr b
    (Val x) <*> _ = Val x
    _ <*> (Val x) = Val x
    Var f <*> x   = fmap f x
    Add f g <*> x = Add (f <*> x) (g <*> x)

instance Monad Expr where
    -- (>>=) :: Expr a -> (a -> Expr b) -> Expr b
    (Val x)   >>= _ = Val x
    (Var x)   >>= f = f x
    (Add l r) >>= f = Add (l >>= f) (r >>= f)

