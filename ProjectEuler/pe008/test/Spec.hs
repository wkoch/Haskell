import Lib
import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

main :: IO ()
main = hspec $ do
    describe "List every n elements of a list" $ do
        it "returns pairs made of a list" $
            traverseBy 2 [1,2,3,4,5] `shouldBe` [[1,2],[2,3],[3,4],[4,5]]