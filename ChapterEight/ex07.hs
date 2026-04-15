data Maybe' a = Nothing' | Just' a

instance Eq a => Eq (Maybe' a) where
    Nothing' == Nothing' = True
    Just' x == Just' y   = x == y
    _ == _               = False

data List' a = Empty' | Cons' a (List' a)

instance Eq a => Eq (List' a) where
    Empty' == Empty'         = True
    Cons' x xs == Cons' y ys = x == y && xs == ys
    _ == _                   = False