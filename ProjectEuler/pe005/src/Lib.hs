module Lib where

import Data.Function

zeroRem :: Int -> Int -> Bool
zeroRem a b = rem a b == 0

divisibleByAll :: Int -> [Int] -> Bool
divisibleByAll n xs = [] == [ x | x <- xs, not $ zeroRem n x ]

solve :: [Int] -> Int
solve xs = [ x | x <- [1..], divisibleByAll x xs ]
    & take 1
    & head

present :: Int -> IO ()
present n = n & show & putStrLn