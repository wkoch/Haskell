module PE008Spec where
    
-- import PE008.Internal
import Lib
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec =
    describe "List every n elements of a list" $ do
    it "returns pairs made of a list" $
        listEvery 2 [1,2,3,4,5] `shouldBe` [[1,2],[2,3],[3,4],[4,5]]
    
    it "returns triples made of a list" $
        listEvery 3 [1,2,3,4,5] `shouldBe` [[1,2,3],[2,3,4],[3,4,5]]