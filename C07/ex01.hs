f' :: (a -> b) -> [a] -> (a -> Bool) -> [b]
f' f xs p = [f x | x <- xs, p x]

f'' :: (a -> b) -> [a] -> (a -> Bool) -> [b]
f'' f xs p = map f (filter p xs)