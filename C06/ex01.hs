fac :: Int -> Int
fac 0 = 1
fac n | n < 0     = 0 -- really undefined (but return 0 for simplicity)
      | otherwise = product [1..n]