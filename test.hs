main = putStrLn $ show $ length $ myRev [1..10000000]

myRev x = foldl (\l a -> a : l) [] x
