import Lib
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $
    describe "returns the sum of all primes below limit" $
        it "sum of primes below 10" $
            sumOfPrimes 9 `shouldBe` 17