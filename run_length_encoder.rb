# Compress a string (only has alphabet characters), with basic encoding,
 # where you simply count the number of repeated characters. Then also 
 # write a routine to decompress it.

# Input: "AAAAA" 
# Output: "5A"

# Input: "BAAAB"
# Output: "B3AB"

# Input: "ABAB"
# Output: "ABAB" [We are not concerned about characters repeating in groups]
require 'byebug'
def RLE(strInput)
	return RLE_helper(strInput, 0, 0)
end


def RLE_helper(strInput, _index, _count)
	if _index == strInput.length
		return "#{strInput[_index]}#{_count}"
	end

	if strInput[_index] == strInput[_index - 1]
		RLE_helper(strInput, _index + 1, _count + 1)
	else
		RLE_helper(strInput, _index, 0)
	end

end

print "\n#{RLE("AAAAA")}\n"
# 5A
