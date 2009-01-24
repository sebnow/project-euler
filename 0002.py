#!/usr/bin/env python

def isEven(n):
	return n % 2 == 0

def fibonacci():
	"""
	Fibonacci sequence generator
	>>> f = fibonacci()
	>>> [f.next() for i in range(10)]
	[1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
	"""
	a, b = 1, 2
	while 1:
		yield a
		a, b = b, b + a

def solve():
	"""
	Find the sum of all the even-valued terms in the Fibonacci sequence
	which do not exceed four million.

	>>> solve()
	4613732
	"""
	s = 0
	fib = fibonacci()
	i = fib.next()
	while i < 4000000:
		if isEven(i):
			s = s + i
		i = fib.next()
	return s

if __name__ == "__main__":
	print "Answer:", solve()
