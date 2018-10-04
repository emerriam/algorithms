require 'byebug'
require './my_graph'
include MyGraph




def find_minimum_number_of_moves(rows, cols, start_row, start_col, end_row, end_col)

	board = set_up(rows, cols)

	start_pos = board[start_row][start_col]
	end_pos = board[end_row][end_col]
end

def set_up(rows, cols)
	i = 0
	_grid = []
  0.upto(rows) do |row|
    _grid[row] = []
    0.upto(cols) do |col|
      _grid[row][col] = Vertex.new(i, row, col, nil)
      i = i + 1
    end
  end
  _grid
end


rows = 5
cols = 5
start_row = 0
start_col = 0
end_row = 4
end_col = 1

find_minimum_number_of_moves(rows, cols, start_row, start_col, end_row, end_col)


# Maximum Degree = 8
# Minimum = 4
