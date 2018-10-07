require 'byebug'



def top_sort(graph)
	output = []
	onpath = []
	visited = []
	for graph.each do |n|
		tsort_util(graph, n, output, onpath, visited)
	end
	return output.reverse
end

def tsort_util(graph, node, output, onpath, visited)
	if onpath.include?(node)
		return
	end

	if visited.include?(node)
		return
	end
	visited.push(node)
	
	

end