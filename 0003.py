#!/usr/bin/env python
primeNumbers = [2]

def isPrime(n):
	"""
	Return whether n is a prime number

	>>> isPrime(7)
	True
	>>> map(isPrime, range(10))
	[False, False, True, True, False, True, False, True, False, False]
	"""
	# If it's not in the list, generate prime up to n
	if n > primeNumbers[-1]:
		for i in xrange(primeNumbers[-1] + 1, n + 1):
			if i < 2:
				continue
			if i == 2:
				primeNumbers.append(i)
			if not i & 1:
				continue
			prime = True
			for divisor in xrange(3, int(i ** 0.5) + 1, 2):
				if i % divisor == 0:
					prime = False
					break
			if prime:
				primeNumbers.append(i)
	return n in primeNumbers

def maxPrimeFactorOf(n):
	"""
	Returns a list of all prime factors of n
	>>> maxPrimeFactorOf(6)
	3
	>>> maxPrimeFactorOf(13195)
	29
	"""
	from math import ceil
	i = int(ceil(n ** 0.5))
	j = 2
	result = 0
	while i > j:
		if n % i == 0 and isPrime(i):
			result = i
			break
		i = i - 1
	return result

def solve():
	"""
	Returns the largest prime factor of the number 600851475143
	"""
	return maxPrimeFactorOf(600851475143)

if __name__ == "__main__":
	print "Answer: ", solve()
