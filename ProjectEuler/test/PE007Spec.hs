module PE007Spec where

-- import PE007.Internal
import Lib
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec =
    describe "returns the nth prime number" $ do
        it "3rd prime" $
            getNthPrime 3 `shouldBe` 5

        it "10th prime" $
            getNthPrime 10 `shouldBe` 29
        
        it "201th prime" $
            getNthPrime 201 `shouldBe` 1229