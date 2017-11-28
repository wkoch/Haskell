module Lib where


traverseBy :: Int -> [Int] -> [[Int]]
traverseBy n xs
    | length xs >= n = [take n xs] ++ (traverseBy n $ tail xs)
    | otherwise      = []