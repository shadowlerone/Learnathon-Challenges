def beginner arr1, arr2
	arr1 & arr2
end

def advanced a, b
	(a*b).to_s == (a*b).to_s.reverse
end


puts beginner [1, 2, "hi"], [5, "hi", "hello", 2]

puts advanced 91, 99
puts advanced 4, 7