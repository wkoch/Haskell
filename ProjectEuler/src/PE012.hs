module PE012 (solvePE012) where

import Data.Function
import PE012.Internal

solvePE012 :: IO ()
solvePE012 = do
    putStr "Problem 012: "
    print $ solve