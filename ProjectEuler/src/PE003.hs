module PE003 (solvePE003) where

import Data.Function
import PE003.Internal

solvePE003 :: IO ()
solvePE003 = do
    putStr "Problem 003: "
    600851475143 & solve & print