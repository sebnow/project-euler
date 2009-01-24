def solve(min, max):
	"""
	If we list all the natural numbers below 10 that are multiples of 3 or 5, we
	get 3, 5, 6 and 9. The sum of these multiples is 23.

	>>> solve(0, 10)
	23
	>>> solve(0, 1000)
	233168
	"""
	return sum([i for i in range(min, max) if i % 3 == 0 or i % 5 == 0])
 
if __name__ == "__main__":
	print "Answer:", solve(0, 1000)
