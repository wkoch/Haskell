module Main where

import Data.Function
import Lib

main :: IO ()
main = 10001 & getNthPrime & print