module Main where

import Lib

main :: IO ()
main = do
    putStrLn $ show $ solve [1..999]

multiple_of_3_5 n = rem n 3 == 0 || rem n 5 == 0

solve range =
    sum $ filter multiple_of_3_5 range