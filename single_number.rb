# @param {Integer[]} nums
# @return {Integer}
require 'byebug'
def single_number(nums)
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
				return key
			end
		end
end




# Given a non-empty array of integers, every element appears twice except for one. Find that single one.
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?


puts "\n#{single_number([4,1,2,1,2])}\n" # 1