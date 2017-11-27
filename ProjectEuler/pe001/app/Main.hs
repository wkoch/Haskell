module Main where

import Data.Function
import Lib

main :: IO ()
main = [1..999]
    & solve
    & present