module Main where

import Data.Function
import Lib

main :: IO ()
main = do
    solve 4000000 & present

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