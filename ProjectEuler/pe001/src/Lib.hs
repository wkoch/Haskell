module Lib where

import Data.Function

multiple_of_3_5 :: Integer -> Bool
multiple_of_3_5 n = rem n 3 == 0 || rem n 5 == 0

solve :: [Integer] -> Integer
solve range = range & filter multiple_of_3_5 & sum

present s = s & show & putStrLn