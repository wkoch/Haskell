import Lib
import Test.Hspec

main :: IO ()
main = hspec $ do
    describe "Tests if a number is a Palindrome" $ do
        it "5 is a Palindrome" $
            isPalindrome 5 `shouldBe` True
        
        it "101 is a Palindrome" $
            isPalindrome 101 `shouldBe` True

        it "90009 is a Palindrome" $
            isPalindrome 90009 `shouldBe` True

        it "100 is not a Palindrome" $
            isPalindrome 100 `shouldBe` False

        it "1234 is not a Palindrome" $
            isPalindrome 1234 `shouldBe` False
    
    
    describe "Solves Project Euler problem 004" $ do
        it "The largest palindrome product of 2 digits is 9009" $
            largestPalindromeProduct 99 `shouldBe` 9009
        
        it "The largest palindrome product of 3 digits is 906609" $
            largestPalindromeProduct 999 `shouldBe` 906609
    