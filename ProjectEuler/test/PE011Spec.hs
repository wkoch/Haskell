module PE011Spec where

import PE011.Internal
-- import Lib
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "Converts a String into an Int List" $
        it "should break \"01 02\\n03 04\" into [[1,2],[3,4]]" $
            convert "01 02\n03 04" `shouldBe` [[1,2],[3,4]]

    describe "Traverses a matrix and returns the biggest product of n numbers" $ do
        it "returns the maximum horizontally" $
            biggestProduct 2 [[2,1,3],[2,5,5]] `shouldBe` (25,[5,5])
        
        it "returns the maximum vertically" $
            biggestProduct 2 [[2,1,5],[2,3,6]] `shouldBe` (30,[5,6])
        
        it "returns the maximum diagonally" $
            biggestProduct 2 [[2,1,5],[2,7,3]] `shouldBe` (35,[7,5])

    describe "Traverses a list and returns the biggest product" $
        it "returns the maximum sequence in a list of lists" $
            getMaximum 2 [[2,1,3],[2,6,5]] `shouldBe` (30,[6,5])
