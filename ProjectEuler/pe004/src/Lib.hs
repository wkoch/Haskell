module Lib where

import Data.Function
import Data.List

isPalindrome :: Int -> Bool
isPalindrome n = show n == reverse(show n)

largestPalindromeProduct :: Int -> Int
largestPalindromeProduct n =
    [ x*y | x <- [n,n-1..1], y <- [n,n-1..1], isPalindrome (x*y) ]
        & sort
        & last

present :: Int -> IO ()
present n = n & show & putStrLn