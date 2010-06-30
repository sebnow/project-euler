import Data.Char

window :: Int -> [a] -> [[a]]
window _ [_, _, _, _] = []
window n xs = take n xs : window n (tail xs)

maxProductOfConsec :: Int -> [Int] -> Int
maxProductOfConsec n xs = maximum $ map product (window n xs)

solution :: [Int] -> Int
solution = maxProductOfConsec 5

getNums :: String -> IO [Int]
getNums filename = do t <- readFile filename
                      return $ map digitToInt $ concat $ lines t

main = do xs <- getNums "0008.dat"
          print $ show (solution xs)

