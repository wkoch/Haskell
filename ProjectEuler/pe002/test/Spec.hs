import Lib
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
    describe "returns the nth Fibonnaci number" $ do
        it "Fib 0 is 0" $
            fib 0 `shouldBe` 0

        it "Fib 1 is 1" $
            fib 1 `shouldBe` 1

        it "Fib 2 is 1" $
            fib 2 `shouldBe` 1

        it "fib 7 is 13" $
            fib 7 `shouldBe` 13

        it "Fib 10 is 55" $ do
            fib 10 `shouldBe` 55
    
    
    describe "Lists fibonacci numbers" $ do
        it "First 10 fibonacci numbers" $
            (take 10 $ listFibs) `shouldBe` [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
    
    
    describe "Solves Project Euler problem 002" $ do
        it "Solves the example" $
            solve 89 `shouldBe` 44

        it "Solves the whole problem" $
            solve 4000000 `shouldBe` 4613732