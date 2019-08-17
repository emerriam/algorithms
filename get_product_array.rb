# Given an array of numbers nums of size n, find an array of numbers products of size n, 
# such that products[i] is the product of all numbers nums[j], where j != i.
#!/bin/ruby
require 'json'
require 'stringio'
require 'byebug'

def getProductArray(numbers)
	n = numbers[0]
	numbers = numbers[1,n]
	output = ''
	products = Array.new(n) { |i| i = 1 }

	(0...n).each do |i|
		(0...n).each do |j|
			if i != j
				products[i] = products[i] * numbers[j]
			end
		end
	end

	products.each do |p|
		output << "#{p}\n"
	end
	return output
end

# print getProductArray([2,5,1000])
print "\n#{getProductArray([3,4,9,10])}\n"


# nums_count = gets.strip.to_i
# nums = Array.new(nums_count)
# nums_count.times do |i|
#     nums_item = gets.strip.to_i
#     nums[i] = nums_item
# end
# res = getProductArray nums
