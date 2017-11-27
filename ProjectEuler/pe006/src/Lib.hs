module Lib where


square :: Int -> Int
square = (^ 2)

sumOfSquares :: [Int] -> Int
sumOfSquares = sum . map square

squareOfSum :: [Int] -> Int
squareOfSum = square . sum

solve :: [Int] -> Int
solve xs = squareOfSum xs - sumOfSquares xs

present :: Int -> IO ()
present = putStrLn . show
