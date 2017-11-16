module Main where

import Data.Function
import Lib

main :: IO ()
main = do
    [1..999]
        & solve
        & show
        & putStrLn

multiple_of_3_5 :: Integer -> Bool
multiple_of_3_5 n = rem n 3 == 0 || rem n 5 == 0

solve :: [Integer] -> Integer
solve range =
    range
        |> filter multiple_of_3_5
        |> sum    

(|>) :: a -> (a -> b) -> b
(|>) x f = f x
infixl 0 |>

-- Dá para usar & e |> da mesma forma como em Elixir.
-- |> Parece já ser usado por uma biblioteca Haskell (Conflito?).
-- & é nativo da linguagem, só depende da biblioteca Data.Function