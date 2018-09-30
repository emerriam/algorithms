# require './assistant'
require 'byebug'

class Node
  attr_accessor :left, :right, :counter
  attr_reader :value
  def initialize(value)
    @value = value
    @counter = 0
  end

  def children?
     return 2 if !left.nil? && !right.nil?
     return 1 if !left.nil? && right.nil?
     return 1 if !right.nil? && left.nil?
     return 0
  end

  def children_equal?
  	if self.children? == 2
  		self.left.value == self.right.value
  	end
  	false
  end

  def has_left?
  	!self.left.nil?
  end

  def has_right?
  	!self.right.nil?
  end

	def findSingleValueTrees(node) 
		root_val = node.value
  	DFT_pre_order_recursive(node, self.counter,root_val)
  	return self.counter
	end



  def DFT_pre_order_recursive(node, counter, root_val)
    if node == nil
      return true
      # return false
    end

    if !node.left.nil?
	    left = DFT_pre_order_recursive(node.left, @counter,root_val)
	  end
	  if !node.right.nil?
	    right = DFT_pre_order_recursive(node.right, @counter,root_val)
	  end
    if left && right

    	if node.left.nil? && node.right.nil? &&
    		(node.value == root_val)

    		self.counter = self.counter + 1
    		print "leaf, #{self.counter}\n"
    		return true

    	elsif (!node.left.nil? && !node.right.nil?) && 
    		(node.left.value == node.value) &&
    		(node.right.value == node.value)
    		
    		self.counter = self.counter + 1
    		print "both, #{self.counter}\n"
    		return true

    	elsif !node.left.nil? && node.left.value == node.value

    		self.counter = self.counter + 1
    		print "left only, #{counter}\n"
    		return true

    	elsif !node.right.nil? && node.right.value == node.value
    		
    		self.counter = self.counter + 1
    		print "right only, #{counter}\n"
    		return true
    	end
     end
    return false
  end

end

def findSingleValueTrees(root) 
	if root.nil?
		return 0
	else
		return root.findSingleValueTrees(root)
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

class Queue
  def initialize
    @data = []
  end

  def enqueue(element)
    @data.push(element)
  end

  def dequeue
    @data.shift
  end

  def empty?
    @data.empty?
  end

  def size
    @data.size
  end

end

class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data.push(element)
  end

  def peek
    @data.first
  end

  def pop
    @data.pop
  end

  def empty?
    @data.empty?
  end

  def my_count
    @data.size
  end

  def to_a
    arr = []
    (0...self.my_count).each do |x|
      arr.push(self.pop)
    end
    return arr
  end

  def from_a(arr)
    (0...arr.size).each do |x|
      self.push(arr[x])
    end

  end

end

# root = Node.new("I")

# # first level
# root.left = Node.new("I")
# root.right = Node.new("I")

# # second level
# root.left.left = Node.new("I")
# root.left.right = Node.new("I")
# # root.right.left = Node.new("H")
# root.right.right = Node.new("I")

# third level
# root.left.left.left = Node.new("H")
# root.left.left.right = Node.new("H")

# third level
# root.left.left.left = Node.new("A")
# root.left.left.right = Node.new("G")


# root = Node.new("5")

# # first level
# root.left = Node.new("5")
# root.right = Node.new("5")

# # second level
# root.left.left = Node.new("5")
# root.left.right = Node.new("5")
# root.right.right = Node.new("5")
#     5
#    /\
#   5   5
#  / \   \
# 5   5   5
# third level


arr = '1 1 # # 3'
_str = arr.strip;
root = createTree(_str);
print findSingleValueTrees(root);

