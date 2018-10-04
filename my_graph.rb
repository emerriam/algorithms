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

    def valid_position?(row, col, board)
      if board[row][col].nil?
        return nil
      else 
        return board[row][col]
      end
    end

    def possible_moves(board)
      output = []

      output.push([self.row + 2, self.col - 1]) unless board[self.row + 2, self.col - 1].nil?
      output.push([self.row + 2, self.col + 1]) unless board[self.row + 2, self.col + 1].nil?

      output.push([self.row - 2, self.col - 1]) unless board[self.row - 2, self.col - 1].nil?
      output.push([self.row - 2, self.col + 1]) unless board[self.row - 2, self.col + 1].nil?

      output.push([self.row + 1, self.col - 2]) unless board[self.row + 1, self.col - 2].nil?
      output.push([self.row + 1, self.col + 2]) unless board[self.row + 1, self.col + 2].nil?

      output.push([self.row - 1, self.col - 2]) unless board[self.row - 1, self.col - 2].nil?
      output.push([self.row - 1, self.col + 2]) unless board[self.row - 1, self.col + 2].nil?

      output
    end

  end
end