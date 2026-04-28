shouldContinue :: (Double, Double) -> Bool
shouldContinue (x,y) = abs (x-y) > distValue where
    distValue = 0.00001

sqroot :: Double -> Double
sqroot n = snd . head $ dropWhile shouldContinue (zip allPredictions (tail allPredictions)) where
    allPredictions = iterate nextPred n
    nextPred a = (a + n / a) / 2