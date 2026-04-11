-- Instructed to use nested conditional expressions to re-write alternative definition of && operator
(&) :: Bool -> Bool -> Bool
(&) x y = if x == True then y else False