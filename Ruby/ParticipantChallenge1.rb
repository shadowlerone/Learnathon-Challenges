


line1 = "3"
line2 = "4"
line3 = "3 10 8 14"
line4 = "1 11 12 12"
line5 = "6 2 3 9"

=begin
	1 	2	3	4
1:	3	10	8	14
2:	1	11	12	12
3:	6	2	3	9
grid = [[],[],[]]
9 = (3, 4) <= 12;
12 = (2, 3) and (2, 4)
(2, 3) = 6 => (3,1)		(2, 4) = 8 => (1, 3)
(3,1) = 3 => (1,1)		(1, 3) = 3 => (1, 1)
=end

def check y, x, arr
	prod = y * x; next_check = []
	arr.each_with_index do |row, rowID|
		row.each_with_index do |item, itemID|
			next_check.append [rowID +1, itemID +1] if item == prod
		end
	end
	return false unless next_check.length > 0
	if next_check.include? [1,1]
		return true		
	else
		next_check.each{|y , x| return check(y, x, arr)}
	end
end
m = gets.to_i
n = gets.to_i
arr = []
(1..m).each do |i|
	line =  gets.split(" ").map { |x| x.to_i }
	arr << line
end 
puts check m, n, arr