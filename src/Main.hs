{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RebindableSyntax #-}
module Main where

import Math.Dual
import NumericPrelude

main :: IO ()
main = do
    print (5 :+ 0 + 3 :+ 0 :: Dual Int)
    print (5 :+ 0 * 3 :+ 0 :: Dual Int)
