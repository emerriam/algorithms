require 'byebug'
require 'json'
require 'stringio'
# Height Of K-Ary Tree

# Problem Statement:
# Given a k-ary tree containing N nodes. You have to find height of the tree. (Length of the longest path from root to any node.)
# (We are looking for number of edges on longest path from root to any node, not number of nodes on longest path from root to any node.)
# Input Format:
# There is only one argument denoting the root of the k-ary tree. 
# Output Format:
# Return an integer denoting height of the k-ary tree.
# Constraints:

# 1 <= N <= 10^5
# 0 <= k <= N - 1
# Total there are 30 test cases, out of which 1 test case (test case no. 28) is a 
    # degenerate tree (pathological tree) of size 10^5. Due to recursion limit, 
    # some languages like javascript and python might not pass it, 
    # so don't worry about that. But if you are using C++ or Java then it is expected to pass it.  
# Sample Test Case:

# Sample Input:

# 3-ary tree:
# 1 is the root of the tree.
# 2's parent is 1.
# 3's parent is 1.
# 5's parent is 1.
# 4's parent is 5.

# Sample Output:
# 2

# Explanation:

# Given a 3-ary tree with 5 nodes. Node 1 has 3 children 2, 3 and 5, and node 5 has one child 4.
# Longest path from root is 1 -> 5 -> 4 and it's length is 2.

# Notes:
# Total there are 30 test cases, out of which 1 test case (test case no. 027) is a 
    # degenerate tree (pathological tree) of size 10^5. Due to recursion limit, 
    # some languages like JavaScript, Ruby, Python etc. might not pass it, 
    # so don't worry about that. But if you are using C++ or Java then it is expected to pass it.  



class TreeNode
    attr_accessor :children

    def initialize
        # To find height of tree, value stored in nodes does not matter. 
        # So in input also we are not given this field. 
        # @val = 0
        @children = []
    end
end

$N = 0

def build_tree(from, to)
    $N = from.length + 1
    address = Hash.new
    for i in 1..$N
        address[i] = TreeNode.new
    end
    for i in 0...$N - 1
        address[from[i]].children.push(address[to[i]])
    end
    return address[1]
end

# def find_height(root)
#     l = Math::log(k)
#     res = (l * (n + 1)) - 1

# end

def find_height(n,k)
      # log2(n+1)−1
    res = (Math::log(k) * (n + 1)) - 1

    print res.ceil
end

arr = "1 3 3 2 1 3 4 3 2"

k = arr.strip.to_i

from_count = arr.strip.to_i

from = Array.new(from_count)

from_count.times do |i|
    from_item = arr.strip.to_i
    from[i] = from_item
end

to_count = arr.strip.to_i

to = Array.new(to_count)

to_count.times do |i|
    to_item = arr.strip.to_i
    to[i] = to_item
end

root = build_tree from, to

# print = find_height(root)
find_height(2,5)
# root = TreeNode.new(2)
# root.left_ptr = TreeNode.new(1)
# root.right_ptr = TreeNode.new(3)






