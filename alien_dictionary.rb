require 'byebug'
require './my_graph'

def find_order(words)

	graph = ListGraph.new

	

	letter_hash = {}
	output_array = []
	words.each do |word|
		word_array = word.chars
		word_array.each_with_index do |letter, index|

			letter_hash[letter] = []
			letter_hash[letter]["in"] = word_array.slice(0,index)
			letter_hash[letter]["out"] = word_array.slice(index + 1,word_array.length)

		end	
	end
	puts letter_hash


end