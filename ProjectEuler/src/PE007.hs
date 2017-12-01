module PE007 (solvePE007) where
    
import Data.Function
import PE007.Internal

solvePE007 :: IO ()
solvePE007 = do
    putStr "Problem 007: "
    10001 & solve & print