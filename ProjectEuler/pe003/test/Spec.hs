import Lib
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
    describe "Solves Project Euler problem 003" $ do
        it "The largest prime factor of 13195 is 29." $
            solve 13195 `shouldBe` 29

        it "The largest prime factor of 600851475143 is 6857" $
            solve 600851475143 `shouldBe` 6857