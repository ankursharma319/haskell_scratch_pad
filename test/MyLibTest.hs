module Main (main) where

import Test.HUnit
import Prelude

main :: IO ()
main = do
    putStrLn "Running test suite"
    (_counts :: Counts) <- runTestTT tests
    putStrLn $ "Test counts summary: " ++ showCounts _counts

tests :: Test
tests = TestList [test1]

test1 :: Test
test1 = TestCase $
    assertEqual "asserting values are same"
    (89::Integer)
    (90::Integer)
