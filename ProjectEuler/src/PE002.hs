module PE002 (solvePE002) where

import Data.Function
import PE002.Internal

solvePE002 :: IO ()
solvePE002 = do
    putStr "Problem 002: "
    4000000 & solve & print