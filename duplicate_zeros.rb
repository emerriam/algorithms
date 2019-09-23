# Given a fixed length array arr of integers, duplicate each occurrence of zero, 
# shifting the remaining elements to the right.
# Note that elements beyond the length of the original array are not written.
# Do the above modifications to the input array in place, do not return anything from your function.

require 'byebug'

# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
    i = 0
    while i < arr.length
        
        if arr[i] == 0
        		arr.insert(i+1, 0)
        		arr.pop
            i = i + 1
        end
        i = i + 1
    end
end


puts "\n#{duplicate_zeros([1,0,2,3,0,4,5,0])}"






# Input: candies = [1,1,2,2,3,3]
# Output: 3

# Input: candies = [1,1,2,3]
# Output: 2