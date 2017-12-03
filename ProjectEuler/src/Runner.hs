module Runner where

import PE001
import PE002
import PE003
import PE004
import PE005
import PE006
import PE007
import PE008
import PE009
import PE010
import PE011
import PE012
import PE013
import PE014

runAll :: IO ()
runAll = mapM_ run [1..14]

run :: Int -> IO ()
run n
    | n > length exercises = putStrLn $ "Problem " ++ show n ++ " is still unsolved."
    | otherwise            = exercises !! (n-1)
    where exercises = [solvePE001, solvePE002, solvePE003, solvePE004, solvePE005
                     , solvePE006, solvePE007, solvePE008, solvePE009, solvePE010
                     , solvePE011, solvePE012, solvePE013, solvePE014]