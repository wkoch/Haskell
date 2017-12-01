module PE005 (solvePE005) where
    
import Data.Function
import PE005.Internal

solvePE005 :: IO ()
solvePE005 = do
    putStr "Problem 005: "
    solve [1..20] & print