require 'byebug'
# require './my_tree'
# include MyBinaryTree


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


def printAllPaths(root) 
  path = []
  path_size = 0
  DFT_print_all_paths_to_leaves(root, path, path_size)
end

def DFT_print_all_paths_to_leaves(root, path, path_size)
  if root == nil
    return
  end

  path[path_size] = root.val

  path_size = path_size + 1

  if root.left.nil? && root.right.nil?
    print path.map { |i| i.to_s}.join(" ")
    print "\n"

  else
    DFT_print_all_paths_to_leaves(root.left, path, path_size)
    DFT_print_all_paths_to_leaves(root.right, path, path_size)
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



# _str = '1 2 3 4 5 6 7'
_str = 'A L G O R I T H M'

# root = n.createTree(_str)

# root = Node.new(1)

# # first level
# root.left = Node.new(2)
# root.right = Node.new(3)

# # second level
# root.left.left = Node.new(4)
# root.left.right = Node.new(5)
# root.right.left = Node.new(6)
# root.right.right = Node.new(7)

# root.left.left.left = Node.new("A")
# root.left.left.right = Node.new("G")

_size = Integer(47);
input = "89 110 93 162 83 100 \# \# 204 \# \# 69 199 \# \# 181 \# \# \# 184 161 143 6 \# \# 13 \# \# \# \# 62 150 \# \# 168 114 247 \# \# 186 85 \# \# 204 \# \# \# 
141
18 46 73 21 77 248 \# \# 196 \# \# \# 134 \# \# 182 83 180 \# \# 71 22 \# \# 16 57 40 \# \# 177 \# \# \# \# 75 166 61 56 146 123 \# \# 17 \# \# \# \# \# 72 80 172 105 104 \# \# 84 \# \# \# 3 176 98 62 \# \# 227 18 \# \# 96 \# \# \# \# 183 206 \# \# 44 146 211 200 55 100 85 \# \# 6 \# \# \# \# 61 247 128 37 177 118 125 229 \# \# 249 \# \# \# \# \# \# \# 173 230 80 88 \# \# 122 \# \# \# \# 208 144 126 1 249 58 \# \# 82 \# \# \# \# 122 \# \# \# 248 \# \#" 


_str = input.strip;

root = createTree(_str);
printAllPaths(root);

printAllPaths(root)

