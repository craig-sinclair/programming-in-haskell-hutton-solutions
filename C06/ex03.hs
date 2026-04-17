expOp :: Int -> Int -> Int
expOp x 0 = 1
expOp x y = x * expOp x (y-1)

{-
2 ^ 3 (expOp 2 3)
expOp 2 3 = 2 * expOp 2 2
= 2 * (2 * expOp 2 1)
= 2 * (2 * (2 * expOp 2 0))
= 2 * (2 * (2 * 1))
= 2 * (2 * 2)
= 2 * 4
= 8
-}