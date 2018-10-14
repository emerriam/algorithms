class Node
  attr_reader :data, :children
  attr_accessor :terminates
  def initialize(data)
    @data = data
    @children = []
    @terminates = false
  end

  def insert(char)
    return get(char) if have?(char)

    child = Node.new(char)
    @children << child
    child
  end

  def have?(char)
    @children.each do |c|
      return true if c.data == char
    end

    false
  end

  def get(char)
    @children.each do |child|
      return child if child.data == char
    end

    false
  end
end

class Trie
  attr_reader :root
  attr_accessor :output
  def initialize
    @root = Node.new(nil)
    @output = []
  end

  def insert(word)
    node = @root
    word.size.times do |i|
      child = node.insert(word[i])
      node = child
    end
    node.terminates = true
  end

  def have?(word)
    node = @root
    word.size.times do |i|
      return false unless node.have?(word[i])
      node = node.get(word[i])
    end

    return node.terminates == true
  end

  def prefix_match(prefix)
    node = @root

    prefix.size.times do |i|
      character = prefix[i]
      if !node.have?(character)
        return []
      else
        node = cycle_children(node.children, prefix[i])

        path = Stack.new
        path.push(prefix[i])
        collect_words(node, @output, path)
      end
    end

  end

  def cycle_children(children, character)
    children.each do |child|
      if child.data == character
        return child
      end
    end
  end

  def collect_words(node, output, path)
    if node.terminates
      @output = @output + path.to_a
    end
    node.children.each do |child|
      path.push(child.data)
      collect_words(child, @output, path)
    end
  end
end

class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data.push(element)
  end

  def join(ary)
    @data + ary
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