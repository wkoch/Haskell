import Lib
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $
    describe "returns the product of a triplet" $
        it "product of a triplet where a+b+c = 12" $
            pythagoreanTriplets 12 `shouldBe` 60