# You are given a string s that consists of lower case English letters and brackets. 
# Reverse the strings in each pair of matching parentheses, starting from the innermost one.
# Your result should not contain any brackets.

require 'byebug'
# @param {String} s
# @return {String}
def reverse_parentheses(s)
	par_stack = []
	point = 0
	raw_str = ''
	temp_left = 0
	temp_right = 0
	pair_num = 0
	pair = {}
	i = 0
	while i < s.size
		if s[i] == '('
			par_stack.push(point)
			debugger
		elsif s[i] == ')'
			temp_right = point - 1
			temp_left = par_stack[0]
			par_stack.pop
			# pair[pair_num++] = {temp_left, temp_right}
		else
			raw_str += s[i]
			point = point + 1
		end
		i = i + 1
	end
	
	# j = 0
	# while j < pair_num
	# 	reverse(raw_str.begin() + pair[i].left, raw_str.begin() + pair[i].right + 1);
	# 	j = j +1
	# end
	return raw_str


end

puts "\n#{reverse_parentheses("(u(love)i)")}"

