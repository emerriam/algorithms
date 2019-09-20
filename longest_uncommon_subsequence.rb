# Given a group of two strings, you need to find the longest uncommon subsequence of this group of two strings. 
# The longest uncommon subsequence is defined as the longest subsequence of one of these strings 
# and this subsequence should not be any subsequence of the other strings.

# A subsequence is a sequence that can be derived from one sequence by deleting some 
# characters without changing the order of the remaining elements. 
# Trivially, any string is a subsequence of itself and an empty string is a subsequence of any string.

# The input will be two strings, and the output needs to be the length of the longest uncommon subsequence. 
# If the longest uncommon subsequence doesn't exist, return -1.

# Input: "aba", "cdc"
# Output: 3
# Explanation: The longest uncommon subsequence is "aba" (or "cdc"), 
# because "aba" is a subsequence of "aba", 
# but not a subsequence of any other strings in the group of two strings. 


# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)
  long_string = a <= b ? b : a
  short_string = a >= b ? b : a
    
	return -1 if a == b
    
  store = []
	i = 0
	while i <= long_string.length
		if short_string[i] == nil
			return long_string.size
		end

    if long_string[i] != short_string[i]
      store.push(long_string[i])
    end

		i = i + 1
	end
	puts "\nstore: #{store}"
  return store.size

end

# puts "\n#{find_lu_slength("aba","cdc")}\n" # 3
# puts "\n#{find_lu_slength("aaa","aaa")}\n" # -1
# puts "\n#{find_lu_slength("aefawfawfawfaw","aefawfeawfwafwaef")}\n" # 17
puts "\n#{find_lu_slength("swoegxvzsfetrdtnoucawucug","gaqrzczpmtsxlwxdacitrcgklziiya")}\n" # 30


