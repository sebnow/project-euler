divides :: Integer -> Integer -> Bool
divides n p = rem n p == 0

isPrime :: Integer -> Bool
isPrime n = all (not . divides n) (takeWhile (\p -> p*p <= n) primes)

primes :: [Integer]
primes = 2 : filter isPrime [3,5..]

solution = primes !! 10000

