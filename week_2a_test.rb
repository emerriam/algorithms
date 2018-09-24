
require 'byebug'

def find_all_well_formed_brackets(n)
	arr = Array.new(n*2)
	print_parens(arr, n)

end

def print_parens(arr, n)
	output = []
	if n > 0
		parens(arr, 0, n, 0, 0, output);
	end
	return output

end

def parens(arr, position, n, _open, _close, output)
	if _close == n
		i = 0
		this_set = ''
		while i < arr.length
			this_set << arr[i]
			i = i + 1
		end
		output.push(this_set)
		return
	else
		if _open > _close
			arr[position] = ')'
			parens(arr, position + 1, n, _open, _close + 1, output); 
		end
		if _open < n
			arr[position] = '('
			parens(arr, position + 1, n, _open + 1, _close, output); 
		end

	end

end

n = 3
find_all_well_formed_brackets(n)

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
# Need to track number of brackets in recursion helper

# def find_all_well_formed_brackets(n)
# 	i = 0
# 	arr = Array.new(n*2)
# 	midpoint = (arr.length / 2)
# 	recurse(arr, i, n, midpoint)

# end

# def recurse(arr, i, n, midpoint)
	
# 	arr[midpoint + i] = ")"

# 	if i > n - 1
# 		return arr.join("")
# 	end

# 	arr[midpoint - i] = "("
# 	recurse(arr, i + 1, n, midpoint)

# end
