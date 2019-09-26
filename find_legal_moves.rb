=begin
We are designing a 2D game and we have a game map that we represent by an integer matrix. For now, each cell can be a wall (denoted by -1) or a blank space (0).

board = [
  [0,  0,  0, -1, -1],
  [0,  0, -1,  0,  0],
  [0, -1,  0, -1,  0],
  [0,  0, -1,  0,  0],
  [0,  0,  0,  0,  0],
  [0,  0,  0,  0,  0],
  [0,  0,  0,  0,  0],
]

The player can move 1 space at a time up, down, left, or right. The player can't go through walls or land on a wall, or go through the edges of the board.

Write a function that, given a board and a player starting position (represented as a row-column pair), returns all of the possible next positions for the player.

Sample inputs (board, starting_position) and outputs (in any order):

findLegalMoves(board, (3, 1)) =>
  (3, 0), (4, 1)

findLegalMoves(board, (5, 3)) =>
  (5, 2), (5, 4), (4, 3), (6, 3)

findLegalMoves(board, (5, 1)) =>
  (6, 1), (4, 1), (5, 0), (5, 2)

findLegalMoves(board, (6, 0)) =>
  (5, 0), (6, 1)

findLegalMoves(board, (6, 4)) =>
  (5, 4), (6, 3)

findLegalMoves(board, (0, 0)) =>
  (0, 1), (1, 0)

findLegalMoves(board, (2, 2)) =>
  [empty]

n: width of the input board
m: height of the input board

=end
board = [
  [0,  0,  0, -1, -1],
  [0,  0, -1,  0,  0],
  [0, -1,  0, -1,  0],
  [0,  0, -1,  0,  0],
  [0,  0,  0,  0,  0],
  [0,  0,  0,  0,  0],
  [0,  0,  0,  0,  0],
]

start1 = [3, 1]
start2 = [5, 3]
start3 = [5, 1]
start4 = [6, 0]
start5 = [6, 4]
start6 = [0, 0]
start7 = [2, 2]

def findLegalMoves(board, input_position)

  output_array = []
  x = input_position[0]
  y = input_position[1]
  
  
  x_boundry = board.size
  y_boundry = board[0].size
  
  puts "boundryx: #{x_boundry}\n"
  puts "boundryy: #{y_boundry}\n"
  
  if x >= 0 && y+1 < y_boundry
    if board[x][y+1] != nil && board[x][y+1] == 0
      output_array.push([x, y+1])
    end 
  end
  
  if x >= 0 && y-1 >= 0
    if board[x][y-1] != nil && board[x][y-1] == 0
      output_array.push([x, y-1])
    end 
  end
  
  if x+1 < x_boundry && y < y_boundry
    if board[x+1][y] != nil && board[x+1][y] == 0
      output_array.push([x+1, y])
    end 
  end
  
  if x-1 >= 0 && y <= y_boundry
    if board[x-1][y] != nil && board[x-1][y] == 0
      output_array.push([x-1,y])
    end 
  end
  return output_array
  
    
end




puts "\n#{findLegalMoves(board, start1)}\n"
puts "\n#{findLegalMoves(board, start2)}\n"
puts "\n#{findLegalMoves(board, start3)}\n"
puts "\n#{findLegalMoves(board, start4)}\n"
puts "\n#{findLegalMoves(board, start5)}\n"
puts "\n#{findLegalMoves(board, start6)}\n"
puts "\n#{findLegalMoves(board, start7)}\n"