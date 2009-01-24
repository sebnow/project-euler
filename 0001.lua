function solve(min, max)
	sum = 0
	for i = min,max-1 do
		if i % 3 == 0 or i % 5 == 0 then
			sum = sum + i
		end
	end
	return sum
end

print("Answer:", solve(0, 1000))

