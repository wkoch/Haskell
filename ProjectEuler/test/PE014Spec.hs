module PE014Spec where

-- import PE011.Internal
-- import Lib
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec =
    describe "Not implemented" $
    it "Implement me" $
        False `shouldBe` True