module PE014 (solvePE014) where

import Data.Function
import PE014.Internal

solvePE014 :: IO ()
solvePE014 = do
    putStr "Problem 014: "
    print $ solve 999999