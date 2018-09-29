require './binary_tree'
include BinaryTree
require 'byebug'

class Node
  attr_accessor :left, :right
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def children?
    return left || right
  end


	def self.findSingleValueTrees(node) 
		# A grouping can be 1
		# level traverse the tree
		# for each node, explore for like numbers on left or right
		# keep a container for tracking whether a previous one has been find

		
		print node.value
	end

end

root = Node.new("5")

# first level
root.left = Node.new("5")
root.right = Node.new("5")

# second level
root.left.left = Node.new("5")
root.left.right = Node.new("5")
root.right.right = Node.new("5")
#     5
#    /\
#   5   5
#  / \   \
# 5   5   5
# third level
def findSingleValueTrees(node) 
	Node.findSingleValueTrees(node)
	
end
print findSingleValueTrees(root)

