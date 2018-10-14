require 'byebug'
# Complete the reverse_ordering_of_words function below.
def reverse_ordering_of_words(s)
	split_words = s.split('')

	output = []
	j = split_words.length

	(0..split_words.length).each do |i|
		output[i] = split_words[j]
		j = j - 1
	end

	returnval = output.join('')
	return returnval
end

words = "I will do it."

print reverse_ordering_of_words(words)
print "\n"