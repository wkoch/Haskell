module Main where

import Data.Function
import Lib

main :: IO ()
main = triangleByDivisors 5 & print