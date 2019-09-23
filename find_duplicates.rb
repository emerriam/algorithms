# Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array), 
# some elements appear twice and others appear once.
# Find all the elements that appear twice in this array.
# Could you do it without extra space and in O(n) runtime?
require 'byebug'

# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
    i = 0
    store_hash = {}
    output_array = []
    while i < nums.length
    	if store_hash[nums[i]] != nil
    		output_array.push(nums[i])
    	else
    		store_hash[nums[i]] = 1
    	end
    	i = i + 1
    end
    return output_array.sort

end

puts "\n#{find_duplicates([4,3,2,7,8,2,3,1])}"

# Input:
# [4,3,2,7,8,2,3,1]

# Output:
# [2,3]