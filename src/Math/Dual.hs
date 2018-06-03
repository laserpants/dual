{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RebindableSyntax #-}
module Math.Dual where

import Algebra.Additive
import Algebra.Ring
import NumericPrelude
import NumericPrelude.Base

data Dual a = a :+ a deriving (Show, Eq)

infixl 8 :+

instance Algebra.Ring.C a => Algebra.Additive.C (Dual a) where
    (x :+ a) + (y :+ b) = (x + y) :+ (a + b)
    zero                = 0 :+ 0
    negate (x :+ a)     = negate x :+ negate a

instance Algebra.Ring.C a => Algebra.Ring.C (Dual a) where
    (x :+ a) * (y :+ b) = (x*y) :+ (x*b + a*y)
    fromInteger a       = fromInteger a :+ 0
