def beginner string
	vowels = "AEIOUaeiou"
	string.split(" ").filter{|w| vowels.include? w[0]}
end

$ln = {
	"A" =>1, 
	"B" =>2, 
	"C" =>3,
	"D" =>4,
	"E" =>5, 
	"F" =>6, 
	"G" =>7, 
	"H" =>8
}
def advanced q1, q2
	if q1[0] == q2[0]
		return "true (vertical)"
	elsif q1[1] == q2[1]
		return "true (horizontal)"
	elsif ($ln[q2[0]] - $ln[q1[0]]).abs == (q2[1].to_i - q1[1].to_i).abs
		
		return "true (diagonal)"
	else
		return false
	end
end

puts beginner "I am doing great in coding!"

puts advanced "H1", "H5"
puts advanced "A1", "G7"
puts advanced "E1", "B1"
puts advanced "F7", "C6"