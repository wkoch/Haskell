module Main where

import Data.Function
import Data.Numbers.Primes
import Lib

main :: IO ()
main = do
    2000000 & primesBelow & present

primesBelow :: Int -> Int
primesBelow n = sum [ x | x <- [1..n], isPrime x ]

present n = n & show & putStrLn