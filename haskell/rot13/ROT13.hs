#!/usr/bin/env runhaskell

module ROT13 where

import Data.Char (ord, chr, isAsciiLower, isAsciiUpper)
import System.IO()
import Test.QuickCheck (quickCheck)

littleA :: Int
littleA = ord 'a'

littleZ :: Int
littleZ = ord 'z'

bigA :: Int
bigA = ord 'A'

bigZ :: Int
bigZ = ord 'Z'

rot13Char :: Char -> Char
rot13Char c
  | isAsciiLower c = rot littleA c
  | isAsciiUpper c = rot bigA c
  | otherwise = c
  where
    rot :: Int -> Char -> Char
    rot r = chr . (r +) . flip mod 26 . (13 +) . flip (-) r . ord

rot13 :: String -> String
rot13 = map rot13Char

propReversible :: String -> Bool
propReversible text = (rot13 . rot13) text == text

test :: IO ()
test = quickCheck propReversible

main :: IO ()
main = interact rot13
