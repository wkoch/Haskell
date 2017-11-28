module Lib where

import Data.Numbers.Primes

sumOfPrimes :: Int -> Int
sumOfPrimes n = sum $ filter isPrime [1..n]