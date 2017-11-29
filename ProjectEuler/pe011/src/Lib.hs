module Lib where

import qualified Data.Text as T


textToString :: T.Text -> String
textToString t = T.unpack (t :: T.Text)