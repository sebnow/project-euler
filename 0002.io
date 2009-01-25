# A map for memoization
fibonacci_memo := Map clone
fibonacci_memo atPut("0", 0)
fibonacci_memo atPut("1", 1)

fibonacci := method(n,
	return fibonacci_memo atIfAbsentPut(n asString,
	 	fibonacci(n - 1) + fibonacci(n - 2)
	)
)

list := List clone
i := 0
loop(
	num := fibonacci(i)
	if(num >= 4000000, break)
	list append(num)
	i = i + 1
)
solution := list select(isEven) sum
writeln("Answer: ", solution)
