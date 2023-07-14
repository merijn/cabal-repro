module Repro.Conduit where

import Conduit ((.|), yield)
import qualified Data.Conduit.Combinators as C

import Repro (someValue)

testConduit :: IO ()
testConduit = runConduitT $ yield someValue .| C.print
