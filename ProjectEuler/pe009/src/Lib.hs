module Lib where

pythagoreanTriplets :: Int -> Int
pythagoreanTriplets n =
    head [ a*b*c | a <- [1..n-1], b <- [a..n-1], c <- [b..n],
        a < b, b < c,
        a*a + b*b == c*c,
        a+b+c == n ]