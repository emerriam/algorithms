require 'byebug'
require './my_graph'

def find_order(words)

	graph = ListGraph.new



	letter_hash = {}
	output_array = []
	words.each do |word|
		word_array = word.chars
		word_array.each_with_index do |letter, index|

			letter_hash[letter] = {}


			letter_hash[letter]["in"] = word_array.slice(0,index)
			letter_hash[letter]["out"] = word_array.slice(index + 1,word_array.length)

		end	
	end
	debugger
	letter_hash.each do |lh|

		while letter_hash.size > 0

			if lh[1]["in"].size == 0
				
				this_letter = lh[1]
				output_array.push(this_letter)
				letter_hash.delete(this_letter)
			end

		end
	end


end

words = ["baa", "abcd", "abca", "cab", "cad"]
find_order(words)