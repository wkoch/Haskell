module PE006Spec where

import PE006.Internal
import Lib
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "returns the square of a number" $ do
        it "2 squared is 4" $
            square 2 `shouldBe` 4

        it "3 squared is 9" $
            square 3 `shouldBe` 9

        it "4 squared is 16" $
            square 4 `shouldBe` 16

        it "5 squared is 25" $
            square 5 `shouldBe` 25

        it "6 squared is 36" $
            square 6 `shouldBe` 36
    
    
    describe "Returns the sum of squares of a given list" $
        it "The sum of the squares of the first 10 numbers is" $
            sumOfSquares [1..10] `shouldBe` 385
    
    describe "Returns the square of the sum of a given list" $
        it "The square of the sum of the first ten numbers is" $
            squareOfSum [1..10] `shouldBe` 3025
    
    
    describe "Solves Project Euler problem 006" $ do
        it "Solves the example" $
            solve [1..10] `shouldBe` 2640

        it "Solves the whole problem" $
            solve [1..100] `shouldBe` 25164150