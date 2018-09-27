require 'byebug'
require './binary_tree'
include BinaryTree


# Given a binary tree, print out all of its root-to-leaf paths one per line.
# e.g. for a tree that's 
#    1
#  2  3
# 4 5 6 7

# Print:
# 1 2 4
# 1 2 5
# 1 3 6
# 1 3 7

def printAllPaths(root) 
	arr = root
	root = Node.new(root[0])
	arr[1...arr.size].each do |x|
		root.push(x)
	end
	printPaths(root)
	debugger
end

def printPaths(root)

	if root.value == nil
		return
	end
	print "#{root.value}\n"
	
	if root.left != nil
		printPaths(root.left)
	end

	if root.right != nil
		printPaths(root.right)
	end


end


# root = [1,2,3,4,5,6,7]
root = [89,110,93,162,83,100,nil,nil,204,nil,nil,69,199,nil,nil,181,nil,nil,nil,184,161,143,6,nil,nil,13,nil,nil,nil,nil,62,150,nil,nil,168,114,247,nil,nil,186,85,nil,nil,204,nil,nil,nil]



printAllPaths(root)


