# You are given an array of integers which is analogous to a continuous stream of input. 
# Find K largest elements from a given stream of numbers. 
# By definition, we don't know the size of the input stream. 
# Hence produce K largest elements seen so far, at any given time. 
# For repeated numbers, return them only once.

# If there are less than K unique elements, return all of them.

# Represent input stream as an array. Don't rely on its size.
# Feel free to use built-in functions if you need a specific data-structure.

# Input Format:
# 	Integer array
# 	Repeats are possible
# 	Input may or may not be sorted

# Output Format:
# 	Return an integer array containing K largest elements. 
# 	If there are less than K unique elements, return all of them. 
# 	If there are duplicates, return only one instance.
# 	Order of output does not matter.

# Constraints:
# 	1 <= N <= 10^5
# 	1 <= K <= 10^5
# 	Given array may contain duplicate numbers.



def topK(arr, k)


end


arr = [1, 5, 4, 4, 2]; k = 2
# [4, 5]


# arr = [1, 5, 1, 5, 1]; k = 3
# [5, 1]