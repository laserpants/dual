{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RebindableSyntax #-}
module Main where

import Math.Dual
import NumericPrelude

main :: IO ()
main = print (5 :+ 0 + 3 :+ 0 :: Dual Int)
