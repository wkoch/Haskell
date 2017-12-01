module PE005.Internal where

import Lib
import Data.Function

solve :: [Int] -> Int
solve xs = [ x | x <- [1..], divisibleByAll x xs ]
    & take 1
    & head