module Test.Main where

import Prelude

import Effect (Effect)
import Example (sum, mkPoint)
import Jest (expectToEqual, test)

main :: Effect Unit
main = do
  test "sum" $ do
    expectToEqual (sum 1 2) 3
    expectToEqual (sum 22 11) 33

  test "mkPoint" $ do
    expectToEqual (mkPoint 1 2) { x: 1, y: 2 }
    expectToEqual (mkPoint 22 11) { x: 22, y: 11 }