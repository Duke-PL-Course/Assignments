#!/bin/sh

cd racket
racket basics-test.rkt
racket advanced-test.rkt
cd ..

cd haskell
ghc haskell-intro-solutions.hs haskell-intro-test.hs
./haskell-intro-test
ghc haskell-typing-solutions.hs haskell-typing-test.hs
./haskell-typing-test
ghc haskell-datatypes-solutions.hs haskell-datatypes-test.hs
./haskell-datatypes-test
rm *.o *.hi haskell-intro-test haskell-typing-test haskell-datatypes-test
cd ..

cd ruby
# ruby ruby-basics-test.rb
cd ..
