module PE010Spec where

-- import PE010.Internal
import Lib
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec =
    describe "returns the sum of all primes below limit" $
        it "sum of primes below 10" $
            sumOfPrimes 9 `shouldBe` 17