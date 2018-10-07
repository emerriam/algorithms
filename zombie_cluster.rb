require 'json'
require 'stringio'
require 'byebug'
require './my_graph'

def zombieCluster(zombies)

	graph = Graph.new(4, 4)
	graph.populate(zombies)
	current = graph.grid[0][0]


	graph_bfs(current, graph)
	# print "last position: #{graph.current.position}\n"
	while graph.seen.count < graph.cols * graph.cols + 1
		graph_bfs(graph.current.next_valid, graph)
	end

	hit_count = 0
	graph.clusters.each do |clu|
		hit_count = hit_count + 1
	end
	
	return hit_count
end



def graph_bfs(start_pos, graph)
	graph.seen.push(start_pos)
	graph.clusters[start_pos.position] = 1

	q = Queue.new
	q.enqueue(start_pos)

	while !q.empty?
		cur = q.dequeue

			cur.possible_moves.each do |nxt|
			if nxt != nil
				if !graph.seen.include?(nxt)
					graph.current = nxt
					graph.seen.push(nxt)
					q.enqueue(nxt)
				end
			end
		end
	end

end
zombies = []
# zombies[0] = [1,0,0,0,0,0,1,0,0,0]
# zombies[1] = [0,1,0,0,0,1,0,0,0,1]
# zombies[2] = [0,0,1,0,1,0,0,0,0,0]
# zombies[3] = [0,0,0,1,0,0,0,0,0,0]
# zombies[4] = [0,0,1,0,1,0,0,0,0,0]
# zombies[5] = [0,1,0,0,0,1,0,0,0,0]
# zombies[6] = [1,0,0,0,0,0,1,0,0,0]
# zombies[7] = [0,0,0,0,0,0,0,1,0,0]
# zombies[8] = [0,0,0,0,0,0,0,0,1,0]
# zombies[9] = [0,1,0,0,0,0,0,0,0,1]


zombies[0] = [1,1,0,0]
zombies[1] = [1,1,1,0]
zombies[2] = [0,1,1,0]
zombies[3] = [0,0,0,1]

res = zombieCluster zombies
print "Result: #{res}\n"

# Keep track of which cells have been visited
# keep track of which cluster the cell was visited in