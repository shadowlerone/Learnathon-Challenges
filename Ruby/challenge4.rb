def beginner n
	(1..n).reduce(:*)
end

def advanced a
	divisors = (1..a).filter{|i| a % i == 0}
	divisors.reduce{|sum, n| sum += n**2}
end

puts beginner 5
puts beginner 3
puts beginner 10

puts advanced 6