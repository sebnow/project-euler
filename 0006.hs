sumSquares n = sum $ map (^ 2) [1..n]
squareSum n = (sum [1..n]) ^ 2

diffSumSquare n = squareSum n - sumSquares n

