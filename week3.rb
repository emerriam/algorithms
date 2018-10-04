require 'byebug'
require 'json'
require 'stringio'
# Kth Smallest Element Of BST
class TreeNode
    attr_accessor :val, :left_ptr, :right_ptr

    def initialize node_val
        @val = node_val
        @left_ptr = nil
        @right_ptr = nil
    end
  def DFT_post_order_recursive(root, output)
    if root == nil
      return
    end
    
    DFT_post_order_recursive(root.left_ptr, output)
    DFT_post_order_recursive(root.right_ptr, output)
    output.push(root.val)
    
  end


end

def bst_insert(root, val)
    if root == nil                        # destination.
        return TreeNode.new val
    end
    
    root_copy = root
    while true
        if val <= root.val and root.left_ptr != nil
            root = root.left_ptr
        elsif val <= root.val
            root.left_ptr = TreeNode.new val
            return root_copy
        elsif root.right_ptr != nil
            root = root.right_ptr
        else
            root.right_ptr = TreeNode.new val
            return root_copy
        end
    end
    return root_copy
end


def kth_smallest_element(root, k)
  output = []
  root.DFT_post_order_recursive(root, output)
  output.sort!
  return output[k-1]
end



arr = "3 2 3 1 3"


root = TreeNode.new(2)
root.left_ptr = TreeNode.new(1)
root.right_ptr = TreeNode.new(3)

print kth_smallest_element(root, 3)




