module Main where
import Data.Char (digitToInt)

factorial :: (Enum a, Num a) => a -> a
factorial n = product [1..n]

solution :: Int
solution = sum . map digitToInt . show $ factorial 100

main = print solution

