

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
