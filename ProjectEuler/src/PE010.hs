module PE010 (solvePE010) where
    
import Data.Function
import PE010.Internal

solvePE010 :: IO ()
solvePE010 = do
    putStr "Problem 010: "
    print $ solve 2000000-1