module PE003Spec where
    
import PE003.Internal
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec =
    describe "Solves Project Euler problem 003" $ do
        it "The largest prime factor of 13195 is 29." $
            solve 13195 `shouldBe` 29

        it "The largest prime factor of 600851475143 is 6857" $
            solve 600851475143 `shouldBe` 6857
