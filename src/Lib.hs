{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-} 
{-# LANGUAGE NoImplicitPrelude #-}

module Lib (timeTaskMain) where

import Prelude
import Data.Functor.Identity
import Dhall


timeTaskMain :: IO ()
timeTaskMain = do
  ex <- input auto "[ Left 1, Right \"Hello\"]" :: IO (Vector (Either Natural Text)) 
  print ex 

-- $> timeTaskMain
