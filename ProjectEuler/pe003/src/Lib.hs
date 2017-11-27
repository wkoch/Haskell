module Lib where

import Data.Numbers.Primes

solve :: Int -> Int
solve = last . primeFactors