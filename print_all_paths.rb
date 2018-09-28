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


class Node
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

def createTree(str)
  str.strip()
  return if str.empty?
  deserialize(str)
end

def deserialize(str) 
  nodes = str.split(" ")
  i = 0
  
  addNode = ->() {
    if(i == nodes.length)
      return nil
    elsif(nodes[i] == "" || nodes[i] == '#' )
      x = nil
      i = i+1
      return x 
    else
      root =  Node.new(Integer(nodes[i]));
      i = i+1
      root.left = addNode.call();
      root.right = addNode.call();
      return root
    end
  }
  res = addNode.call()
  return res
end



def printInorder(root)
  return if root.nil?
  printInorder(root.left)
  print root.val, " "
  printInorder(root.right)
end

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


