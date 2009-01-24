def solve(min, max)
  sum = 0
  (min...max).select{|i| i % 3 == 0 or i % 5 == 0}.each{|i| sum += i}
  return sum
end

if __FILE__ == $0
  puts "Answer: " + solve(0, 1000).to_s
end
