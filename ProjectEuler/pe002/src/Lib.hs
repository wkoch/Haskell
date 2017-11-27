module Lib where

import Data.Function

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fib :: Int -> Int
fib n = fibs!!n

listFibs :: [Int]
listFibs = [0..] & map fib

solve :: Int -> Int
solve limit =
    listFibs
    & takeWhile (< limit)
    & filter even
    & sum

present :: Int -> IO ()
present n = n & show & putStrLn