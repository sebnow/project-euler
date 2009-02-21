solve min max = sum (filter (\n -> n `mod` 3 == 0 || n `mod` 5 == 0) ([min..(max - 1)]))
main = print(solve 0 1000)
