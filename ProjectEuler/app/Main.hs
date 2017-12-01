module Main where
    
import Console.Options
import Data.Char (isDigit)
import Data.Monoid
import Runner

main :: IO ()
main = defaultMain $ do

    programName "Project Euler"
    programDescription "a few of the Project Euler problems solved in Haskell"

    -- a simple boolean flag -v or --verbose
    -- helpFlag <- flag (FlagShort 'h' <> FlagLong "help" <> FlagDescription "prints this help text")
    allFlag <- flag (FlagShort 'a'
        <> FlagLong "all"
        <> FlagDescription "runs all solutions sequentially")

    -- a flag 'i' or '--int' requiring an integer as parameter
    specificFlag <- flagParam (FlagShort 'p'
        <> FlagLong "problem"
        <> FlagDescription "runs an specific solution by its number")
            (FlagRequired $ \s -> if all isDigit s then Right (read s :: Int)
                                                   else Left "invalid integer")

    action $ \toParam ->
        if toParam allFlag then runAll
            else case toParam specificFlag of
                Just n -> run n
                Nothing -> putStrLn "Invalid option or number"