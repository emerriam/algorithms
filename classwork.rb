require 'byebug'



# An infinite stream, everytime encounter 404, print top k numbers
# that have been seen so far in the stream.  Where k is 3.
input_stream = [90, 30, 60, 4, 3, 404, 120, 1, 116, 404]

def printTopK(input_stream, k)
	input_stream.each do |item|
		current = input_stream.pop
		if current == 404
			heap.insert(current)
			# print the top k values in the heap
		end
	end
end

printTopK(input_stream, k)

# Merge these sorted lists and output their values in order
# def sortLists(lists)
# 	heap = Heap.new

# 	lists.each do |list|
# 		heap.insert(list.first)
# 	end
# 	lists.each do |list|
# 		heap.insert(list.second)
# 	end
# 	lists.each do |list|
# 		heap.insert(list.third)
# 	end

# end

# lists = [[1,3,5],[2,4,6],[9,10]]
# sortLists(lists)


# def is_subset(array_a, m, array_b, n)
# 	i = 0
# 	j = 0
# 	matches = 0

# 	while (i < m && j < n)
# 		if 
# 	end

# end

# arr_a = [15, 20, 5, 2, 31, 44, 64, 4, 7, 18, 55]

# arr_b = [ 2, 31, 44]


# is_subset (arr_a, 10, arr_b, 2)
