import Prime

divides :: Integer -> Integer -> Bool
divides n p = rem n p == 0

factors :: Integer -> [Integer]
factors n = filter (divides n) [2..(n-1)]

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors n = p : primeFactors (div n p)
	where p = head (filter (divides n) primes)

solve = last . primeFactors $ 600851475143

main = putStrLn . show $ solve

