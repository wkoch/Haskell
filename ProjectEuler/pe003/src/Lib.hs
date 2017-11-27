module Lib where

import Data.Function
import Data.Numbers.Primes

solve :: Int -> Int
solve n = n & primeFactors & last

present n = n & show & putStrLn