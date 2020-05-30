def advanced(a, b):
	return str(a*b) == str(a*b)[::-1]


print(advanced(91, 99))
print(advanced(4, 7))
