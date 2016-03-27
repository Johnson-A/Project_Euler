import           Prelude hiding (gcd, lcm)

main = print $ foldl lcm 1 [1..100]

lcm a b = a `quot` (gcd a b) * b

gcd a 0 = a
gcd a b = gcd b (a `rem` b)

