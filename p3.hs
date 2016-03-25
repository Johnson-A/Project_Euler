module Factor where

import Data.Numbers.Primes
import Data.List

main = putStrLn $ show $ factor 165465413216549875446465432163

lowestFactor :: Integral a => a -> Maybe a
lowestFactor x = find (\a -> (0 == x `rem` a)) $ takeWhile (<= bound x) primes

factor :: Integral a => a -> [a]
factor x = case lowestFactor x of
             Just a -> a : factor (x `div` a)
             Nothing -> [x]

bound :: (Integral a, Integral b) => a -> b
bound = floor . sqrt . fromIntegral
