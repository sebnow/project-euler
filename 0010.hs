import Prime

solution = sum . takeWhile (< 2000000) $ primes

main = putStrLn . show $ solution
