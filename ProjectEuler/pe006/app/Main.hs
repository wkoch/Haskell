module Main where

import Data.Function
import Lib

main :: IO ()
main = do
    [1..100] & solve & present

square :: Int -> Int
square x = x * x

sumOfSquares :: [Int] -> Int
sumOfSquares xs =
    xs
    & (map square)
    & sum

squareOfSum :: [Int] -> Int
squareOfSum xs =
    xs
    & sum
    & square

solve :: [Int] -> Int
solve xs = squareOfSum xs - sumOfSquares xs

present :: Int -> IO ()
present n = n & show & putStrLn
