module PE008.Internal where

import Lib
import Data.Char
import Data.Function

solve :: String -> Int
solve s = s
    & map digitToInt
    & listEvery 13
    & map product
    & maximum