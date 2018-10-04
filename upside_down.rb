# Complete the function below.
class Node
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
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

def upside_down(node) 


end

_size = Integer(7);

input = "1 2 \# \# 3 \# \#"
_str = input.strip;
root = createTree(_str);

clone = upside_down(root);
printInorder(clone);
