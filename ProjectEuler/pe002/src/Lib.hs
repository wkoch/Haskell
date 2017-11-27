module Lib where

import Data.Function

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fib :: Int -> Int
fib n = fibs!!n

list_n_fibs :: Int -> [Int]
list_n_fibs n = [2..n+1] & map fib

solve :: Int -> Int
solve limit =
    list_n_fibs 34
    & filter (< limit)
    & filter even
    & sum

present :: Int -> IO ()
present n = n & show & putStrLn