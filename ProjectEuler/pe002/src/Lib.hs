module Lib where


fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fib :: Int -> Int
fib = (fibs!!)

listFibs :: [Int]
listFibs = map fib [0..]

solve :: Int -> Int
solve = sum . filter even . flip takeWhile listFibs . flip (<)