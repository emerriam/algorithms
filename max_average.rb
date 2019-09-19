require 'byebug'
# Given an array consisting of n integers, 
# find the contiguous subarray of given length k that has the maximum average value. 
# And you need to output the maximum average value.

def find_max_average(nums, k)
	return nums.sort.last if k == 1
	return nums.inject(0){|sum,x| sum + x }.to_f / k if k == nums.size
	highest = 0

	i = 0
	while i < nums.size
		if i+k < nums.size
			subarray = nums[i,i+k]
			print "\nsubarray: #{subarray}\n"
			avg = subarray.inject(0){|sum,x| sum + x }.to_f / subarray.size
			avg > highest ? highest = avg : highest
		end
		i = i + 1
	end
	return highest
end

# puts "\n#{find_max_average([4,2,1,3,3], 2)}\n" # 3
# puts "\n#{find_max_average([4,0,4,3,3], 5)}\n"
puts "\n#{find_max_average([1,12,-5,-6,50,3], 4)}\n" # 12.75
# puts "\n#{find_max_average([5], 1)}\n"


# def find_max_average(nums, k)
# 	return nums.sort.last if k == 1
# 	return nums.inject(0){|sum,x| sum + x }.to_f / k if k == nums.size

# 	highest = 0
# 	i = 0
# 	while i < nums.size

# 		if i + k < nums.size
# 			subarray = nums[i,i+k]
# 			print "\nsubarray: #{subarray}\n"
# 			avg = subarray.inject(0){|sum,x| sum + x }.to_f / subarray.size
# 			avg > highest ? highest = avg : highest
# 		end
# 		i = i + 1
# 	end
# 	return highest
# end