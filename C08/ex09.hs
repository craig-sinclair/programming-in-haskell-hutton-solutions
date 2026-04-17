data Expr = Val Int | Add Expr Expr | Mult Expr Expr

data Op = EVAL Expr | EVALMULT Expr | ADD Int | MULT Int
type Cont = [Op]

exec :: Cont -> Int -> Int
exec [] n = n
exec (EVAL y : c) n = eval y (ADD n : c)
exec (EVALMULT y : c) n = eval y (MULT n : c)
exec (ADD n : c) m = exec c (n+m)
exec (MULT n : c) m = exec c (n*m)

eval :: Expr -> Cont -> Int
eval (Val n) c = exec c n
eval (Add x y) c = eval x (EVAL y : c)
eval (Mult x y) c = eval x (EVALMULT y : c)

value :: Expr -> Int
value e = eval e []