module Lib where

import Data.Function
import Data.Numbers.Primes

multiple_of_3_or_5 :: Integer -> Bool
multiple_of_3_or_5 n = rem n 3 == 0 || rem n 5 == 0

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fib :: Int -> Int
fib = (fibs!!)

listFibs :: [Int]
listFibs = map fib [0..]

isPalindrome :: Int -> Bool
isPalindrome n = show n == reverse(show n)

zeroRem :: Int -> Int -> Bool
zeroRem a b = rem a b == 0

noRem :: Int -> Int -> Bool
noRem x y = rem x y == 0

divisibleByAll :: Int -> [Int] -> Bool
divisibleByAll n xs = null [ x | x <- xs, not $ zeroRem n x ]

square :: Int -> Int
square n = n * n

sumOfSquares :: [Int] -> Int
sumOfSquares = sum . map square

squareOfSum :: [Int] -> Int
squareOfSum = square . sum

getNthPrime :: Int -> Int
getNthPrime n = primes & take n & last

listEvery :: Int -> [Int] -> [[Int]]
listEvery n xs
    | length xs >= n = [take n xs] ++ (listEvery n $ tail xs)
    | otherwise      = []

pythagoreanTriplets :: Int -> Int
pythagoreanTriplets n =
    head [ a*b*c | a <- [1..n-1], b <- [a..n-1], c <- [b..n],
        a < b, b < c,
        a*a + b*b == c*c,
        a+b+c == n ]

sumOfPrimes :: Int -> Int
sumOfPrimes n = sum $ filter isPrime [1..n]

nthTriangular :: Int -> Int
nthTriangular n = sum [1..n]

factors :: Int -> [Int]
factors n = filter (noRem n) [1..n]

triangleByDivisors :: Int -> Int
triangleByDivisors n =
    head $ take 1 [ triangle | x <- [n..],
        let triangle = nthTriangular x,
        let factorsList = triangle & factors,
        length factorsList > n ]

getCollatzSequence :: Int -> [Int]
getCollatzSequence n = reverse $ collatz n []

collatz :: Int -> [Int] -> [Int]
collatz n acc
    | n == 1    = acc ++ [1]
    | even n    = collatz (div n 2) acc ++ [n]
    | otherwise = collatz (3*n+1) acc ++ [n]

biggestCollatzChain :: Int -> (Int, Int)
biggestCollatzChain n =
    map (\x -> (length $ getCollatzSequence x, x)) [1..n]
    & maximum
        