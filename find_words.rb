# Given some text (a string with spaces and other characters) and 
# a bunch of words (list of strings, no spaces in those), 
# find where each of the words appear in the text.

# For every given word you need to return a list of (zero-based) 
# indices of where that word starts in the text. If a word isn’t 
# found in the text, return [-1] for that word.

#
# Complete the 'find_words' function below.
#
# The function accepts STRING and STRING ARRAY as parameter.
# Return 2D INTEGER ARRAY.
#

# Build a hash that stores {text.word => char_i}



require 'byebug'

def find_words(characters, words)
	pointer_hash = {} 

	output_array = []
	word_index = 0
	i = 0

	while i < characters.size
		if characters[i] == ' ' || characters[i+1] == nil

			if characters[i+1] == nil
				difference = characters.size - word_index
			else
				difference = i - word_index
			end
 			word = characters[word_index, difference]
 			if pointer_hash.key?(word)
 				pointer_hash[word].push(word_index)
 			else
 				pointer_hash[word] = [word_index]
 			end
 			word_index = i + 1
		end
		i = i  + 1
	end
	# lookup the words in the hash
	words.each do |w|
		if pointer_hash.key?(w)
			output_array.push(pointer_hash[w])
		else
			output_array.push([-1])
		end
	end
	return output_array
end


text = 'you are very very smart'
words = ['you', 'are', 'very', 'handsome']

print "\n"
print find_words(text, words)
print "\n"

# [ [0], [4], [8, 13], [-1] ]
# “you” is found in the given text starting at the index 0.
# “are” is found in the given text starting at the index 4.
# “very” is found in the given text two times, starting at the indices 8 and 13.
# “handsome” isn’t found in the given text.

