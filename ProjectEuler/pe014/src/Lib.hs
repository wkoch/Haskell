module Lib where

import Data.Function

getCollatzSequence :: Int -> [Int]
getCollatzSequence n = reverse $ collatz n []

collatz :: Int -> [Int] -> [Int]
collatz n acc
    | n == 1    = acc ++ [1]
    | even n    = collatz (div n 2) acc ++ [n]
    | otherwise = collatz (3*n+1) acc ++ [n]

biggestCollatzChain :: Int -> (Int, Int)
biggestCollatzChain n =
    map (\x -> (length $ getCollatzSequence x, x)) [1..n]
    & maximum