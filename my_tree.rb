require 'byebug'
module MyBinaryTree
  class Node
    attr_accessor :left, :right
    attr_reader :value
    def initialize(value)
      @value = value
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
      st = Stack.new
      if root == nil
        return
      end
      st.push(root)
      while !st.empty?
        root = st.pop
        print "#{root.value}\n"
        if root.right
          st.push(root.right)
        end
        if root.left
          st.push(root.left)
        end
      end
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
          root =  Node.new((nodes[i]));
          i = i+1
          root.left = addNode.call();
          root.right = addNode.call();
          return root
        end
      }
      res = addNode.call()
      return res
    end

    def to_a
      (left.to_a + [value] + right.to_a).reverse!
    end

    def node_count
      self.to_a.size
    end

    def DFT_print_all_paths_to_leaves(root, path, path_size)
      if root == nil
        return
      end

      path[path_size] = root.value
      path_size = path_size + 1

      if root.children? == 0
        print path
      else
        DFT_print_all_paths_to_leaves(root.left, path, path_size)
        DFT_print_all_paths_to_leaves(root.right, path, path_size)
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

    def size
      @data.size
    end

    def to_a
      arr = []
      @data.each do |x|
        arr.push(x.value)
      end
      return arr
    end

    def empty?
      @data.empty?
    end
  end
end
# root = Node.new("I")

# # first level
# root.left = Node.new("O")
# root.right = Node.new("H")

# # second level
# root.left.left = Node.new("L")
# root.left.right = Node.new("R")
# root.right.left = Node.new("T")
# root.right.right = Node.new("M")

# # third level
# root.left.left.left = Node.new("A")
# root.left.left.right = Node.new("G")


# print root.DFT_post_order_iterative(root)
# print root.BFT_iterative(root)
# print root.DFT_in_order_iterative(root)
# print root.DFT_post_order_iterative(root)
# print root.DFT_pre_order_iterative(root)