import Lib
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
    describe "returns True when a division has no remainder" $ do
        it "10 divided by 2 returns True" $
            zeroRem 10 2 `shouldBe` True

        it "50 divided by 10 returns True" $
            zeroRem 50 10 `shouldBe` True
        
        it "5 divided by 3 returns False" $
            zeroRem 5 3 `shouldBe` False
        
        it "7 divided by 4 returns False" $
            zeroRem 7 4 `shouldBe` False
    
    
    describe "Tests if a number is divisible by all numbers in a range" $ do
        it "50 is not divisible by all numbers below 11" $
            divisibleByAll 50 [1..10] `shouldBe` False

        it "2520 is not divisible by all numbers below 11" $
            divisibleByAll 2520 [1..10] `shouldBe` True
    
    
    describe "Solves Project Euler problem 003" $ do
        it "Solves the example" $
            solve [1..10] `shouldBe` 2520

        it "Solves the whole problem" $
            solve [1..20] `shouldBe` 232792560