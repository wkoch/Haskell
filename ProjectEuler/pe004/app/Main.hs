module Main where

import Data.Function
import Data.List
import Lib

main :: IO ()
main = do
    999 & makeList & present


isPalindrome :: Int -> Bool
isPalindrome n = (show n) == (show n & reverse)

makeList :: Int -> Int
makeList n =
    [ x*y | x <- [n,n-1..1], y <- [n,n-1..1], isPalindrome (x*y) ]
        & sort
        & last

present :: Int -> IO ()
present n = n & show & putStrLn
