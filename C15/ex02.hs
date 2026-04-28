{-
Outermost:
fst (1+2, 2+3)
= { applying fst }
1 + 2
= { applying + operator }
3

Inntermost:
fst (1+2, 2+3)
= { applying the first + }
fst (3, 2+3)
= { applying + }
fst (3, 5)
= { applying fst }
3

Outermost is preferrable as there are fewer reduction steps
-}