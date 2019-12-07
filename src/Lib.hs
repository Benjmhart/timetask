{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Lib
  ( timeTaskMain,
  )
where

import Data.Functor.Identity
import Dhall
import Prelude

data Task
  = Task
      { name :: String,
        steps :: [String]
      }
  deriving (Eq, Ord, Show, Generic, ToDhall, FromDhall)

timeTaskMain :: IO ()
timeTaskMain = do
  tasks <- input auto "./config.dhall" :: IO (Vector Task)
  print tasks
