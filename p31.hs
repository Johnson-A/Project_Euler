import Data.Function.Memoize
import Data.List (sortBy)
import qualified Data.Map as Map (fromList, lookup)

main :: IO ()
main = print $ findCombs 200 [1, 2, 5, 10, 20, 50, 100, 200]

findCombs :: Int -> [Int] -> Integer
findCombs total coins = combinations total (maximum coins)
  where sortedCoins = sortBy (flip compare) coins
        next = Map.fromList $ zip sortedCoins (tail sortedCoins)

        combinations = memoize2 combs
        
        combs 0 _ = 1
        combs t c = case Map.lookup c next of
          Nothing -> if t `rem` c == 0 then 1 else 0
          Just nc | t < c     -> decr
                  | otherwise -> decr + combinations (t - c) c
            where decr = combinations t nc
