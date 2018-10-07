require 'byebug'
require './my_graph'

def find_minimum_number_of_moves(rows, cols, start_row, start_col, end_row, end_col)
	seen = []
	adj_list = []
	graph = Graph.new(rows, cols)

	start_pos = graph.grid[start_row][start_col]
	end_pos = graph.grid[end_row][end_col]

	return graph_bfs(start_pos, end_pos, graph)
end

def graph_bfs(start_pos, target_pos, graph)
	seen = []
	distance = []
	seen.push(start_pos)
	distance[start_pos.label] = 0

	q = Queue.new
	q.enqueue(start_pos)

	while !q.empty?
		cur = q.dequeue
		if cur == target_pos
			return distance[cur.label]
		end

		cur.possible_moves.each do |nxt|
			if nxt != nil

				if !seen.include?(nxt)
					seen.push(nxt)
					distance[nxt.label] = distance[cur.label] + 1
					q.enqueue(nxt)
				end
			end
		end
	end
	return -1
end


rows = 5
cols = 5
start_row = 0
start_col = 0
end_row = 4
end_col = 1

print find_minimum_number_of_moves(rows, cols, start_row, start_col, end_row, end_col)


# Maximum Degree = 8
# Minimum = 2
