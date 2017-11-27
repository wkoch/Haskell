module Main where

import Data.Function
import Lib

main :: IO ()
main = [1..100] & solve & print