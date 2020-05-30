

def beginner a
	return "Has #{a.length} and a sum of #{a.sum}"
end

def advanced a, b
	return (a**b).to_s.split('').inject (0){|sum, n| sum + n.to_i}
end

puts beginner [1, 2, 3, 4, 5, 6]
puts advanced 2, 5
puts advanced 3, 10