# You are given string s of length n, having m wildcard 
# characters '?', where each wildcard character represent
# a single character. Write a program which returns list of 
# all possible distinct strings that can be generated by 
# replacing each wildcard characters in s with either '0' or '1'.

# Any string in returned list must not contain '?' character 
# i.e. you have to replace all '?' with either '0' or '1'.


def find_all_possibilities(input_string)
	helper_array = []
	find_all_possibilities_helper(input_string, 0, 0, [], helper_array)
end

def find_all_possibilities_helper(input_string, i, j, result_array, helper_array)
	possible_chars = [0,1]
	if i == input_string.size
		return result_array
	end

	if input_string[i] == '?'

	else
		find_all_possibilities_helper(input_string, i + 1, j, result_array, helper_array)
	end


end

s = “1?10”
print find_all_possibilities(s)
#result = ["1010", "1110"] or ["1110", "1010"].