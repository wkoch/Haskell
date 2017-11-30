module Lib where

import Data.Function
import Data.List
import qualified Data.Text as T


stringToText :: String -> T.Text
stringToText s = T.pack (s :: String)

textToString :: T.Text -> String
textToString t = T.unpack (t :: T.Text)

textToInt :: T.Text -> Int
textToInt t = read (textToString t)::Int


convert :: String -> [[Int]]
convert s = s
    & stringToText
    & T.lines
    & map T.words
    & map (map textToInt)


getMaximum :: Int -> [[Int]] -> (Int, [Int])
getMaximum n xs = xs
    & dropWhile (\line -> length line < n )
    & map (\line -> process line n [] )
    & maximum

process :: [Int] -> Int -> [(Int,[Int])] -> (Int,[Int])
process [] _ acc = maximum acc
process xs n acc = acc ++ (:[]) (product $ take n xs, take n xs)
    & process (tail xs) n


horizontally :: Int -> [[Int]] -> (Int,[Int])
horizontally n xs = xs & getMaximum n

vertically :: Int -> [[Int]] -> (Int,[Int])
vertically n xs = xs & transpose & getMaximum n

downward :: Int -> [[Int]] -> (Int,[Int])
downward n xs = xs & diagonals & getMaximum n

upward :: Int -> [[Int]] -> (Int,[Int])
upward n xs = xs & transpose & diagonals & getMaximum n


diagonals :: [[a]] -> [[a]]
diagonals []       = []
diagonals ([]:xss) = xss
diagonals xss      = zipWith (++) (map ((:[]) . head) xss ++ repeat [])
                                    ([]:(diagonals (map tail xss)))


biggestProduct :: Int -> [[Int]] -> (Int, [Int])    
biggestProduct n xs =
    [horizontally n xs] ++ 
    [vertically n xs] ++ 
    [downward n xs] ++ 
    [upward n xs]
    & maximum