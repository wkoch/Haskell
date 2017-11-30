module Main where

import Data.Function
import Lib

main :: IO ()
main = biggestCollatzChain 999999 & print