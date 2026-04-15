data Tree a = Leaf a | Node (Tree a) (Tree a)

numLeavesInTree :: Tree a -> Int
numLeavesInTree (Leaf _) = 1
numLeavesInTree (Node l r) = numLeavesInTree l + numLeavesInTree r

balanced :: Tree a -> Bool
balanced (Leaf _) = True
balanced (Node l r) = abs (numLeavesInTree l - numLeavesInTree r) <= 1 && balanced l && balanced r