module PE009 (solvePE009) where

import Data.Function
import PE009.Internal

solvePE009 :: IO ()
solvePE009 = do
    putStr "Problem 009: "
    print $ solve 1000