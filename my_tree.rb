require 'byebug'

class Node
  attr_accessor :left, :right
  attr_reader :value
  def initialize(value)
    @value = value
  end

  def BFT_iterative(root)
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


  def DFT_recursive(root)
    if root == nil
      return
    end
    DFT_recursive(root.left)
    print "#{root.value}\n"
    DFT_recursive(root.right)
  end

  def DFT_iterative(root)
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


print root.BFT_iterative(root)