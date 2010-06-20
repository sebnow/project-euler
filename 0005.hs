smallestDivisbleBy :: Int -> Int -> Int
smallestDivisbleBy n m = foldl lcm 1 [n..m]

