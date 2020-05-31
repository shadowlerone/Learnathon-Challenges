def beginner start, en, a, b
	return (start..en).filter{|i| i % a == 0 && i % b != 0}
end

def advanced string, arr
	data = []
	arr.each do |i|
		data[i[1]-1] = i[0]
	end
	data.each{|i| string.sub!("-", i)}
	string
end


puts beginner 10, 20, 2, 4

puts advanced "h-l--", [["o", 3], ["e", 1], ["l", 2]]
