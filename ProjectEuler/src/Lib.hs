module Lib where

multiple_of_3_or_5 :: Integer -> Bool
multiple_of_3_or_5 n = rem n 3 == 0 || rem n 5 == 0

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fib :: Int -> Int
fib = (fibs!!)

listFibs :: [Int]
listFibs = map fib [0..]