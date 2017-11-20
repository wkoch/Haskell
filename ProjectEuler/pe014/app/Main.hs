module Main where

import Data.Function
import Lib

main :: IO ()
main = do
    biggestCollatzChain 999999
        & present

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


present n = n & show & putStrLn