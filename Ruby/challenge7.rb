def beginner string
	# Yes I'm going to comment this
	# 1: split string into "Words"
	words = string.split(" ")
	# capitalize the first letter of each word
	words.map!{|w| w[0].upcase + w[(1..(w.length))]}
	# join everything back together
	out = words.join(" ")
	return out

	# How I'd much rather do it:
	# string.split(" ").map {|w| w[0].upcase + w[(1..(w.length))]}.join(" ")
end

puts beginner "hello world i am doing great!"

def advanced list, limit
	# Make a counter dict (called Hash in Ruby)
	counter = {}
	# Make an ouput list (called Array in Ruby)
	out = []
	# Iterate through every element of the input Array
	list.each do |i|
		# If it's not in the counter, set its counter value to 1, otherwise increase its value by one
		counter[i] == nil ? counter[i] = 1 : counter[i] += 1
		# Add i to the output array unless it is over the limit
		out << i unless counter[i] > limit
	end
	# Return out
	out
end

def stupid_one_liner l, lim
	c = {}; out = []; l.each{|i| c[i] == nil ? c[i] = 1 : c[i] += 1 ; o << i unless c[i] > lim }; return o
end


print advanced [1, 1, 2, 3, 1, 3], 2