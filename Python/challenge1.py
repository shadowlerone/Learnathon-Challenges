import functools as ft

def beginner(a):
	return f"Has length: {len(a)} and sum {sum(a)}"

def advanced(a, b):
	return ft.reduce(sum, list(str(a**b)))

def sum(lis):
	return int(aSum) + int(n)

print(advanced(2, 5))
print(advanced(3, 10))
