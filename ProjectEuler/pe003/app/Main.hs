module Main where

import Data.Function
import Data.Numbers.Primes
import Lib

main :: IO ()
main = do
    600851475143
        & primeFactors
        & last
        & present


present n = n & show & putStrLn