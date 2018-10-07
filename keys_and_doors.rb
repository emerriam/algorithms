
class Vertex < Object

  attr_accessor :label, :prev, :row, :col, :neighbors, :graph

  def initialize(label, row, col, prev, graph)
  	@label = label
    @graph = graph
  	@prev = nil unless !prev.nil?
  	@row = row
  	@col = col
    @neighbors = []
  end

  def position
  	[row, col]
  end

  def valid_position?(_row, _col)

    if _row.between?(0, graph.rows) && _col.between?(0, graph.cols)
      return true
    else
      false
    end
  end

  def add_edge(adjacent_node)
    @adjacent_nodes << adjacent_node
  end


  def possible_moves

    _add = [[-1,-2],[-2,-1],[-2,1],[-1,2],[1,2],[2,1],[2,-1],[1,-2]]
    output = []
    _add.each do |x|
      a = x[0]
      b = x[1]
      if valid_position?(self.row + a, self.col + b)
        output << graph.grid[self.row + a][self.col + b]
      end
    end

    output.uniq
  end
end

class Graph < Array
  attr_accessor :rows, :cols, :grid

  def initialize(rows, cols)
    i = 0
    _grid = []

    (0..rows -1 ).each do |row|
      _grid[row] = []

      (0..cols - 1).each do |col|
        _grid[row][col] = Vertex.new(i, row, col, nil, self)
        i = i + 1
      end
    end
    @grid = _grid
    @rows = rows - 1
    @cols = cols - 1
  end
end

class Queue < Object
  def initialize
    super
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



