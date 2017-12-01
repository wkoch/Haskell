module PE003.Internal where
    
import Data.Numbers.Primes

solve :: Int -> Int
solve = last . primeFactors
