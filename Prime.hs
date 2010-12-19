module Prime (isPrime, primes) where

isPrime :: Integer -> Bool
isPrime n = all (\x -> not $ rem n x == 0) (takeWhile (\p -> p*p <= n) primes)

primes :: [Integer]
primes = 2 : filter isPrime [3,5..]

