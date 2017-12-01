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
runAll = do
    run 1
    run 2
    run 3
    run 4
    run 5
    run 6
    run 7
    run 8
    run 9
    run 10
    run 11
    run 12
    run 13
    run 14

run :: Int -> IO ()    
run 1 = solvePE001
run 2 = solvePE002
run 3 = solvePE003
run 4 = solvePE004
run 5 = solvePE005
run 6 = solvePE006
run 7 = solvePE007
run 8 = solvePE008
run 9 = solvePE009
run 10 = solvePE010
run 11 = solvePE011
run 12 = solvePE012
run 13 = solvePE013
run 14 = solvePE014
run n = putStrLn $ "Problem " ++ show n ++ " is still unsolved."