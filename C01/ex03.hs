productEx :: Num a => [a] -> a
productEx [] = 1
productEx (n:ns) = n * productEx ns

-- Alternatively: use foldr with productEx ns = foldr (*) 1 ns