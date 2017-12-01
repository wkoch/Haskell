module PE001.Internal where
    
import Lib

solve :: [Integer] -> Integer
solve = sum . filter multiple_of_3_or_5