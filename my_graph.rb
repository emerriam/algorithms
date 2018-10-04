module MyGraph
  class Vertex
    attr_accessor :label, :prev, :row, :col

    def initialize(label, row, col, prev)
    	@label = label
    	@prev = nil unless !prev.nil?
    	@row = row
    	@col = col
    end
    def position
    	[row, col]
    end
  end

  class Board
    attr_accessor :rows, :cols, :_grid

    def initialize(rows, cols, _grid)
      @rows = rows
      @cols = cols
      @grid = self.set_up
      
    end

    def set_up
      i = 0
      _grid = Array.new(@rows)
      0.upto(@rows) do |row|
        _grid[row] = []
        0.upto(@cols) do |col|
          _grid[row][col] = Vertex.new(i, row, col, nil)
          i = i + 1
        end
      end
      _grid
    end
  end
end