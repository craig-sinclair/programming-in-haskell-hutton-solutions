{-
- 1 + (2*3)
  Redex: 2*3 which is both innermost and outermost

- (1+2) * (2+3)
  innermost 1+2

- fst (1+2, 2+3)
  innermost 1+2
  outermost fst (1+2, 2+3)

- (\x -> 1 + x) (2*3)
  innermost 2*3
  outermost (\x -> 1 + x) (2*3)
-}