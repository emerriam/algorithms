# Palindromic Decomposition Of A String

# Problem Statement:
# A palindromic decomposition of string is a decomposition of the string into sub-strings, 
# such that all those sub-strings are valid palindromes.
# Given a string s, you have to find ALL possible palindromic decompositions of it.

# Input Format:
# There is only one argument denoting string s.

# Output Format:
# Return array of string containing ALL possible palindromic decompositions of given string. 
# To differentiate sub-strings in the decomposed string add '|' between them. 
# (Look at the sample test cases for more clarity.)
# You need not to worry about the order of strings in your output array. 
# Like for s = "aa", arrays ["a|a", "aa"] and ["aa", "a|a"] both will be accepted. 
# (Also note that string itself is also a sub-string.)
# Any string in the returned array should not contain any spaces. 
# e.g. s = "ab" then ["a|b"] is expected, ["a |b"] or ["a| b"] or ["a | b"] will give wrong answer.

# Constraints:
# 1 <= |s| <= 20
# s only contains lowercase letters ('a' - 'z').
# You have to return ALL possible palindromic decompositions.
# In any string in your returned array, order of characters should remain same 
# as in given string. (i.e. for s = "ab" you should return ["a|b"] and not ["b|a"].)

# Sample Test Cases:
# Sample Input:
# "abracadabra"
# Sample Output:
# [
#     "a|b|r|a|c|a|d|a|b|r|a",
#     "a|b|r|a|c|ada|b|r|a",
#     "a|b|r|aca|d|a|b|r|a"
# ]
require 'byebug'
def generate_palindromic_decompositions(s)
	i = 1
	start = 0
	arr = s.split('')
	midpoint = (start + s.length) / 2

	left = midpoint - 1
	right = midpoint
	# debugger
	seek_palindrome(arr,left,right,midpoint, i)

end

def seek_palindrome(arr, left, right, midpoint, i)
	if left <= 0 || right >= arr.size
		return 0
	end

	left_array = arr[midpoint..right]
	right_array = arr[left..(midpoint - i)]

	# debugger

	if !!is_match(right_array, left_array)
		return 1
	end

	count = seek_palindrome(arr, left - i, right + i, midpoint, i)
	count =  count + count

end

def is_match(left_array, right_array)
	 left_array.sort == right_array.sort ?  1 :  0
end

s = 'aaba'
print "\n#{generate_palindromic_decompositions(s)}\n"


# xyx

# 2 different palindromic decompositions possible.
# xyx
# x|y|x

# abac

# 2 different palindromic decompositions possible.
# aba|c
# a|b|a|c

# aaba
# 3 different palindromic decompositions possible.
# a|aba
# aa|b|a
# a|a|b|a