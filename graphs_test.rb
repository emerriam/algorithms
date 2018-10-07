require 'byebug'
require 'rgl/dot'
require 'rgl/adjacency'

def find_order(words)
	graph = RGL::DirectedAdjacencyGraph.new
	debugger
	letter_hash = {}
	output_array = []
	words.each do |word|
		word_array = word.chars
		word_array.each_with_index do |letter, index|

			letter_hash[letter] = {}
			letter_hash[letter]["left"] = word_array.slice(0,index)
			letter_hash[letter]["right"] = word_array.slice(index + 1,word_array.length)

		end	
	end
	puts letter_hash
end


class Graph  
	attr_accessor :vertices, :adjacent

  def initialize(vertices)
  	@vertices = vertices
  	@adjacent = {}
  end

  def add_edge(vertex, adj)
  	adjacent[vertex] = []
  	adjacent[vertex].push(adj)
  end
end


words = ["baa", "abcd", "abca", "cab", "cad"]

find_order(words)

# {
# "b"=>{"left"=>["c", "a"], "right"=>[]}, 
# "a"=>{"left"=>["c"], "right"=>["d"]}, 
# "c"=>{"left"=>[], "right"=>["a", "d"]}, 
# "d"=>{"left"=>["c", "a"], "right"=>[]}
# }