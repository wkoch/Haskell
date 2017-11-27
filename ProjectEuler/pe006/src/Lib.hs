module Lib where


square :: Int -> Int
square n = n * n

sumOfSquares :: [Int] -> Int
sumOfSquares = sum . map square

squareOfSum :: [Int] -> Int
squareOfSum = square . sum

solve :: [Int] -> Int
solve xs = squareOfSum xs - sumOfSquares xs