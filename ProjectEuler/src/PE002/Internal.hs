module PE002.Internal where

import Lib

solve :: Int -> Int
solve = sum . filter even . flip takeWhile listFibs . flip (<)