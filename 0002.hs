fibonacci :: [Int]
fibonacci = 1 : 2 : zipWith (+) fibonacci (tail fibonacci)
solve n = sum $ filter even $ takeWhile (<= n) fibonacci

main = print (solve 4000000)
