module Main where

import Lib

main :: IO ()
main = do
    putStrLn $ show $ pythagoreanTriplets 1000

pythagoreanTriplets n =
    head [ a*b*c | a <- [1..n-2], b <- [a+1..n-1], c <- [b+1..n],
        a < b, b < c,
        a*a + b*b == c*c,
        a+b+c == n ]
