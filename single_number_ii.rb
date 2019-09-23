# Given an array of numbers nums, in which exactly two elements appear only once and
# all the other elements appear exactly twice. Find the two elements that appear only once.

# Example:

# Input:  [1,2,1,3,2,5]
# Output: [3,5]
# Note:

# The order of the result is not important. So in the above example, [5, 3] is also correct.
# Your algorithm should run in linear runtime complexity. 
# Could you implement it using only constant space complexity?

# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
		output_array = []
    i = 0
    store_hash = {}
    while i < nums.size
    	if store_hash[nums[i]] == nil
    		store_hash[nums[i]] = 1
    	else
    		store_hash[nums[i]] = store_hash[nums[i]] + 1
    	end
    	i = i + 1
    end
		store_hash.each do |key, value|
			if value == 1
				output_array.push(key)
			end
		end
		return output_array
end

puts "\n#{single_number([1,2,1,3,2,5])}\n"