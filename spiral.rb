require 'byebug'
#!/usr/bin/env ruby

# This is a simple Ruby script to traverse grid elements in
# a spiral starting from top left

# USAGE: Name the grid file test.txt and put in in the same
# directory as spiral_traversal.rb
# $ ruby spiral_traversal.rb


# read the file containing the grid.
# grid = File.readlines("test.txt")

# Convert the grid to flat text
# text = grid.join

# Create 2 dimensional array of the flat text
# matrix = text.each_line.map { |line| line.split.map(&:to_s) }


def printSpirally(matrix) 
  output = ''
  # Start point on the grid is [0][0]
  start_row = 0
  start_column = 0

  end_row = matrix.length - 1
  end_column = matrix[0].length - 1

  while (start_row <= end_row) && (start_column <= end_column)

    # Traverse left to right
    i = start_column
    for i in i.upto(end_column) do
      output += matrix[start_row][i].to_s
    end
    
    start_row = start_row + 1

    # Traverse top to bottom
    i = start_row
    for i in i.upto(end_row) do
      output += matrix[i][end_column].to_s
    end
    
    end_column = end_column - 1

    # Traverse right to left
    i = end_column
    if start_row <= end_row
      for i in i.downto(start_column) do
        output += matrix[end_row][i].to_s
      end
    end
    
    end_row = end_row - 1

    # Traverse bottom to top
    i = end_row
    if start_column <= end_column
      for i in i.downto(start_row) do
        output += matrix[i][start_column].to_s
      end
    end
    
    start_column = start_column + 1

  end
  return output
end


matrix = [['q', 'w'],['e', 'r'],['t', 'y'],['u', 'i'],['o', 'p'],['a', 's'],['d', 'f'],['g', 'h'],['j', 'k']]

# matrix = [['X','Y','A'],['M','B','C'],['P','Q','R']]
print printSpirally(matrix)
print "\n"