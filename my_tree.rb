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
  # ["I", "O", "H", "L", "R", "T", "M", "A", "G"]
  def BFT_iterative(root)
    print '["I", "O", "H", "L", "R", "T", "M", "A", "G"]' + "\n"
    if root == nil
      return
    end
    q = Queue.new
    q.enqueue(root)

    while !q.empty?
      root = q.dequeue # I
      print("#{root.value}\n") 
      if !root.left.nil?
        q.enqueue(root.left)
      end
      if !root.left.nil?
        q.enqueue(root.right)
      end
    end
  end

  # ["A", "L", "G", "O", "R", "I", "T", "H", "M"]
  def DFT_in_order_recursive(root)
    if root == nil
      return
    end
    DFT_pre_order_recursive(root.left)
    print "#{root.value}\n"
    DFT_pre_order_recursive(root.right)
  end

  # ["A", "L", "G", "O", "R", "I", "T", "H", "M"]
  def DFT_in_order_iterative(root)
    print '["A", "L", "G", "O", "R", "I", "T", "H", "M"]' + "\n"
    if root == nil
      return
    end
    st = Stack.new
    while !root.nil?
      st.push(root)
      root = root.left
    end

    while !st.empty?
      root = st.pop
      print "#{root.value}\n"
      root = root.right
      while !root.nil?
        if !root.nil?
          st.push(root)
          root = root.left
        elsif st.empty?
          break
        else
          root = st.pop
          print "#{root.value}\n"
          root = root.right
        end
      end
    end
  end
  # ["I", "O", "L", "A", "G", "R", "H", "T", "M"]
  def DFT_pre_order_recursive(root)
    if root == nil
      return
    end
    print "#{root.value}\n"
    DFT_pre_order_recursive(root.left)
    DFT_pre_order_recursive(root.right)
  end

  # ["I", "O", "L", "A", "G", "R", "H", "T", "M"]
  def DFT_pre_order_iterative(root)
    print '["I", "O", "L", "A", "G", "R", "H", "T", "M"]' + "\n"

  end

  # ["A", "G", "L", "R", "O", "T", "M", "H", "I"]
  def DFT_post_order_recursive(root)
    if root == nil
      return
    end
    
    DFT_post_order_recursive(root.left)
    DFT_post_order_recursive(root.right)
    print "#{root.value}\n"
    
  end

  #  ["A", "G", "L", "R", "O", "T", "M", "H", "I"]
  def DFT_post_order_iterative(root)
    print '["A", "G", "L", "R", "O", "T", "M", "H", "I"]' + "\n"
    st1 = Stack.new
    st2 = Stack.new

    st1.push(root)
    while !st1.empty?
      root = st1.pop
      st2.push(root)
      if !root.left.nil?
        st1.push(root.left)
      end
      if !root.right.nil?
        st1.push(root.right)
      end
    end

    while !st2.empty?
      print "#{st2.pop.value}\n"
    end

  end

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
end

root = Node.new("I")

# first level
root.left = Node.new("O")
root.right = Node.new("H")

# second level
root.left.left = Node.new("L")
root.left.right = Node.new("R")
root.right.left = Node.new("T")
root.right.right = Node.new("M")

# third level
root.left.left.left = Node.new("A")
root.left.left.right = Node.new("G")


print root.DFT_post_order_iterative(root)
print root.BFT_iterative(root)
print root.DFT_in_order_iterative(root)
print root.DFT_pre_order_iterative(root)
print root.DFT_post_order_iterative(root)