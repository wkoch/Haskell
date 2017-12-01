module PE006 (solvePE006) where
    
import Data.Function
import PE006.Internal

solvePE006 :: IO ()
solvePE006 = do
    putStr "Problem 006: "
    [1..100] & solve & print