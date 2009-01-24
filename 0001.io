Range // FIXME: This shouldn't be here, but "to" doesn't work otherwise

solve := method(min, max,
	return min to(max - 1) select(num, num %(3) == 0 or num %(5) == 0) sum
)

writeln("Answer: ", solve(0, 1000) asString)
