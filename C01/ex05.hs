{-
Effect of reeplacing <= by < in the original definition of qsort?

This would remove elements that are repeated in the list; as the < and > conditions in the list
comprehensions of smaller and larger would disregard elements that are equal to the current value (x)

Consider qsort [2,2,3,1,1]
- First iteration: x = 2, xs = [2,3,1,1]
- smaller = [1,1] and larger = [3]
- results in qsort [1,1] ++ [2] ++ [3] call

Now calling with qsort [1,1,2,3]; we have lost an element (of value 2). This shall repeat for each "current value"
when reached with pattern matching + recursion. Returns a sorted list, but with only the unique elements of the input list.
-}