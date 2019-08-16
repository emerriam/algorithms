# Given an array named array of size n, that contains both positive 
# and negative numbers. Rearrange the array elements so that positive
# and negative numbers appear alternatively in the output. 
# The order in which the positive elements appear should be maintained. 
# Similarly, the order in which the negative elements appear 
# should also be maintained.

# Number of positive and negative integers may not be equal and extra
# positives or negatives have to appear in the end of the array.
require 'byebug'
def alternating_positives_and_negatives(input)
	neg_array = []
	pos_array = []
	output_array = []
	input.each do |value|
		if value < 0
			neg_array.push(value)
		else
			pos_array.push(value)
		end
	end

	n = neg_array.size > pos_array.size ? neg_array : pos_array
	(0...n.size).each do |i|
		if pos_array[i] != nil
			output_array.push(pos_array[i])
		end
		if neg_array[i] != nil
			output_array.push(neg_array[i])
		end
	end
	return output_array
end

input = [2, 3, -4, -9, -1, -7, 1, -5, -6]
print "\n#{alternating_positives_and_negatives(input)} \n"
# [2 -4 3 -9 1 -1 -7 -5 -6]