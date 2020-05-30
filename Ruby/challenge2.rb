def beginner arr, n
	arr.filter {|i| i.length > n}
end

def advanced n
	case n
	when 1
		0
	when 2
		1
	else
		return (advanced n-1) + (advanced n-2)
	end
end

puts advanced(3) == 1
puts advanced(4) == 2
puts advanced(9) == 21

