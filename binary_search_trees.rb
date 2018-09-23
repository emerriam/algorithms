
require 'byebug'
# require './binary_tree'
# include BinaryTree
def how_many_BSTs(n)
	if n <= 1
		return 1
	else
		ttl = 0
		left = 0
		right = 0
		root = 1


		while root <= n
			left = how_many_BSTs(root - 1)
			right = how_many_BSTs(n - root)
			ttl = ttl + (left * right)
			root = root + 1

		end
		return ttl
	end
end



n = 3
print "result: #{how_many_BSTs(n)}\n"

# def how_many_BSTs(n)
# 	return recurse(n)
# end

# def recurse(n)
# 	if n <= 1
# 		return 1
# 	else
# 		counter = 0
# 		i = 1
# 		while i <= n
# 			counter = counter + (recurse(i-1) * recurse(n-i))
# 			i = i + 1
# 		end
# 		return counter
# 	end
# end
