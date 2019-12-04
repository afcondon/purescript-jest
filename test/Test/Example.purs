module Test.Example where

import Prelude

import Effect (Effect)
import Example (sum, mkPoint, asyncSum)
import Jest (describe, expectToEqual, test)

tests :: Effect Unit
tests = do
  describe "test Example module" $ do
    test "sum" $ do
      expectToEqual (sum 1 2) 3
      expectToEqual (sum 22 11) 33

    test "mkPoint" $ do
      expectToEqual (mkPoint 1 2) { x: 1, y: 2 }

    test "asyncSum" $ do
      v <- asyncSum 1 2
      expectToEqual v 3
