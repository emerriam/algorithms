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
  arr.sort!

  output_array = []
  output_hash = {}

  (0..arr.length - 3).each do |i|
    left_value = arr[i]
    start_index = i + 1
    right_index = arr.length - 1

    while(start_index < right_index) do
      start_value = arr[start_index]
      right_value = arr[right_index]

      if (left_value + start_value + right_value) > 0
        right_index -= 1
      else
        start_index += 1
      end

      if left_value + start_value + right_value == 0
      	key = "#{left_value},#{start_value},#{right_value}"
      	output_hash[key] = 1
      end
    end
  end

	return output_hash.keys
  # No matches found

end

def negate_amount(input)
    return -(input.abs)
end

arr = [10, 3, -4, 1, -6, 9]
# arr = [0,0,0]
puts findZeroSum(arr)
# 10,-4,-6
# 3,-4,1

# arr = [12, 34, -46];
# 12,-46,34

# arr = [0, 0, 0];
# 0,0,0


# arr = [-2, 2, 0 -2, 2];
# 2,-2,0

#---------------------------


# def findZeroSum(elements, sum)
#   elements.combination(3).detect do |a, b, c|
#     (a + b + c) == sum
#   end
# end

# arr = [10, 3, -4, 1, -6, 9]
# # # arr = [0,0,0]
# print findZeroSum(arr, 0)