module PE004 (solvePE004) where

import Data.Function
import PE004.Internal

solvePE004 :: IO ()
solvePE004 = do
    putStr "Problem 004: "
    999 & largestPalindromeProduct & print