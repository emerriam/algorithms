def find_all_well_formed_brackets(n)
	i = 0
	arr = Array.new(n*2)
	midpoint = (arr.length / 2)
	recurse(arr, i, n, midpoint)

end

def recurse(arr, i, n, midpoint)
	
	arr[midpoint + i] = ")"

	if i > n - 1
		return arr.join("")
	end

	arr[midpoint - i] = "("
	recurse(arr, i + 1, n, midpoint)

end


n = 3
print find_all_well_formed_brackets(n)

# [
#   "((()))",
#   "(()())",
#   "(())()",
#   "()(())",
#   "()()()"

# ]

# n = 2
# [[]], [][]

# when # of open brackets == number of closing brackets, the string is balanced
# Nunmber of opening brackets should never be > n
