module PE001 (solvePE001) where

import Data.Function
import Lib
import PE001.Internal

solvePE001 :: IO ()
solvePE001 = do
    putStr "Problem 001: "
    [1..999] & solve & print