module Main where

import Data.Function
import Lib

main :: IO ()
main = do
    solve [1..20] & present

divisibleByAll :: Int -> [Int] -> Bool
divisibleByAll n xs =
    [] == [ x | x <- xs, not $ zeroRem n x ]

zeroRem :: Int -> Int -> Bool
zeroRem a b =
    rem a b == 0

solve :: [Int] -> Int
solve xs =
    [ x | x <- [1..], divisibleByAll x xs ]
    & take 1
    & head

present :: Int -> IO ()
present n = n & show & putStrLn