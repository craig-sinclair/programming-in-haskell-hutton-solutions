-- Instructed to use nested conditional expressions to re-write && operator
(&) :: Bool -> Bool -> Bool
(&) x y = if x == y then
           if x == True then
            True else False
          else False