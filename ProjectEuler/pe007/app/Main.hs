module Main where

import Data.Function
import Data.Numbers.Primes
import Lib

main :: IO ()
main = do
    10001
    & getNthPrime
    & present

getNthPrime :: Int -> Int
getNthPrime n =
    primes
    & take n
    & last

present :: Int -> IO ()
present n = n & show & putStrLn    