module Lib where

import Data.Function

noRem :: Int -> Int -> Bool
noRem x y = rem x y == 0

nthTriangular :: Int -> Int
nthTriangular n = sum [1..n]

factors :: Int -> [Int]
factors n = filter (\x -> noRem n x) [1..n]

triangleByDivisors :: Int -> Int
triangleByDivisors n =
    head $ take 1 [ triangle | x <- [n..],
        let triangle = nthTriangular x,
        let factorsList = triangle & factors, length factorsList > n ]