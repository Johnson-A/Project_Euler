main = print $ show $ length $ myRev [1..10000000]

myRev = foldl (flip (:)) []

test = putStrLn =<< getLine

printFile' :: FilePath -> IO ()
printFile' = (putStrLn =<<) . readFile
