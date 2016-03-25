import Data.Set (Set, fromList, member)
import Data.List (nub)
import Factor (factor, bound)

main = putStrLn $ show $ sum $ filter (not . sumOfTwoAbundant) $ takeWhile (<= 28123) [1..]

abundantSet :: Set Int
abundantSet = fromList abundant

abundant = filter isAbundant [1..28123]

isAbundant x = x < (sum $ allFactors x)

allFactors :: Integral a => a -> [a]
allFactors x = nub $ 1 : lower ++ upper
  where lower = [a | a <- [2 .. bound x], 0 == x `rem` a]
        upper = map (x `div`) lower

sumOfTwoAbundant x = pair x /= []

pair x = take 1 $ [(a, x-a) | a <- map (x-) abundant, member a abundantSet]
