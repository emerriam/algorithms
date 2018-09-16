# Complete the findZeroSum function below.

# Given an array of N integers, find all triplets that sum to 0 (zero).
# 	Triplets may or may not be consecutive numbers.
# 	The array can include duplicate elements.
# 	Array is not necessarily sorted.
# 	Print output as shown. i.e. as strings, one per line, comma separated elements. See sample for clarity.
# 	Order of elements inside the answer triplets does not matter. i.e. if your output elements are the same, 
# 	  but only in different order, then it's an acceptable solution.
# 	Do not print duplicate triplets. Eg: 1,1,-2 and 1,-2,1 are duplicates.
# 	If no such triplets are found, then print nothing.

# Input Format:
# 	Integer array
# 	Input may or may not be sorted
# 	Repeats possible

# Output Format:
# 	Return a String array containing all possible triplets who sum to 0. One String for one triplet.
# 	Order of output does not matter. 

# Constraints:
# 	1 <= N <= 2000
# 	-10^3 <= element <= 10^3
# 	Given array may contains duplicate numbers.
require 'byebug'

def findZeroSum(arr)

	output_array = []

	sorted = arr.sort!

	left_index = 0
	# [-6, -4, 1, 3, 9, 10]
	temp_hash = {}

	# Start from Left
	arr.each_with_index do |value, i|
		temp_hash[value] = arr[i]

		right_index = sorted.length-1
		while right_index > 0
			right_value = arr[right_index]
			sum = arr[i] + right_value
			
			if arr.include?(negate_amount(sum))
				add_up = []
				add_up.push(arr[i])
				add_up.push(right_value)
				add_up.push(negate_amount(sum))
				add_up.sort!
				temp_hash[add_up] = 1
				print "add_Up is: #{add_up}\n"
				# output_array.push("#{arr[i]}, #{right_value}, #{negate_amount(sum)}")
				# output_array[i].push()
			end
			debugger
			right_index -= 1
		end
	end


# debugger
	return temp_hash.keys
end

def negate_amount(input)
    return -(input.abs)
end

arr = [10, 3, -4, 1, -6, 9];
print findZeroSum(arr)
# 10,-4,-6
# 3,-4,1

# arr = [12, 34, -46];

# 12,-46,34

# arr = [0, 0, 0];

# 0,0,0


# arr = [-2, 2, 0 -2, 2];

# 2,-2,0