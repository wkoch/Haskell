module PE001Spec where

import PE001.Internal
import Lib
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "tests if a number is a multiple of 3 or 5" $ do
        it "returns True if multiple of 3" $
            multiple_of_3_or_5 6 `shouldBe` True

        it "returns True if multiple of 5" $
            multiple_of_3_or_5 10 `shouldBe` True

        it "returns False if not a multiple of 3 or 5" $ do
            multiple_of_3_or_5 1 `shouldBe` False
            multiple_of_3_or_5 2 `shouldBe` False
            multiple_of_3_or_5 7 `shouldBe` False
            multiple_of_3_or_5 11 `shouldBe` False
    
    
    describe "Solves Project Euler problem 001" $ do
        it "Solves the example" $
            solve [1..9] `shouldBe` 23

        it "Solves the whole problem" $
            solve [1..999] `shouldBe` 233168