
# You are given a sorted array arr which is rotated by unknown pivot k. 
# You need to find minimum element from given array using fastest 
# possible way which uses only constant space.




def find_minimum(arr)
	arr.sort!
	return arr[0]
end
arr = [ 4, 5, 6, 7, 8, 1, 2, 3]
print "\n#{find_minimum(arr)}\n"
# 1
# For given arr = [ 4, 5, 6, 7, 8, 1, 2, 3] which is sorted in ascending 
# order and right rotated by pivot 5 has minimum value as 1 at index 5.