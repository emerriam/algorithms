# Compress a string (only has alphabet characters), with basic encoding,
 # where you simply count the number of repeated characters. Then also 
 # write a routine to decompress it.

# Input: "AAAAA" 
# Output: "5A"

# Input: "BAAAB"
# Output: "B3AB"

# Input: "ABAB"
# Output: "ABAB" [We are not concerned about characters repeating in groups]
def RLE(strInput)
	return RLE_helper(strInput, 0, 0, output = '')
end

def RLE_helper(strInput, _index, _count, output)
	return output if _index == strInput.length

	if strInput[_index + 1] == strInput[_index]
		RLE_helper(strInput, _index + 1, _count + 1, output)
	else 
		if _count > 0 
			output << "#{_count + 1}"
			output << strInput[_index]
		else
			output << strInput[_index]
		end
		RLE_helper(strInput, _index + 1, 0, output)
	end

end

print "\n#{RLE("ABAB")}\n"
# 5A
