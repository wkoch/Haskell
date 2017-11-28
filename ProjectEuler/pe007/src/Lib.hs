module Lib where

import Data.Function
import Data.Numbers.Primes


getNthPrime :: Int -> Int
getNthPrime n = primes & take n & last