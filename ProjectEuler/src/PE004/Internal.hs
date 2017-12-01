module PE004.Internal where
    
import Lib
import Data.List
import Data.Function

largestPalindromeProduct :: Int -> Int
largestPalindromeProduct n =
    [ x*y | x <- [n,n-1..1], y <- [n,n-1..1], isPalindrome (x*y) ]
        & sort
        & last