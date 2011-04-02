module Main where

readDigits :: FilePath -> IO [Integer]
readDigits = fmap (map read . lines) . readFile

solution :: [Integer] -> Int
solution = read . take 10 . show . sum

main = readDigits "0013.dat" >>= print . solution
