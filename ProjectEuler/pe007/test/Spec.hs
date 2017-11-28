import Lib
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
    describe "returns the nth prime number" $ do
        it "3rd prime" $
            getNthPrime 3 `shouldBe` 5

        it "10th prime" $
            getNthPrime 10 `shouldBe` 29
        
        it "201th prime" $
            getNthPrime 201 `shouldBe` 1229