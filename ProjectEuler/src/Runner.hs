module Runner where

import PE001
import PE002

-- limit = 10
-- runAll = putStrLn "Running all solutions."
lastSolvedProblem :: Int
lastSolvedProblem = 10
-- runAll = map run [1..lastSolvedProblem]
runAll = do
    run 1
    run 2

run 1 = solvePE001
run 2 = solvePE002
run n = putStrLn $ "Problem " ++ show n ++ " is still unsolved."