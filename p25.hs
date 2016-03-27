import           Data.List

main = print $ findIndex (>= 10 ^ 999) fibs

fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
