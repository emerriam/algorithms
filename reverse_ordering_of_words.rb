require 'byebug'

def reverse_ordering_of_words(s)
	split_words = s.split(/ /)

	output = []
	j = split_words.length

	(0..split_words.length).each do |i|
		output[i] = split_words[j]
		j = j - 1
	end

	if output[0] == nil 

	    output.shift
	end

	returnval = output.join(' ')

	return returnval
end

	# output.each do |o|

	# 	if o != nil
	# 		debugger
	# 		o.reverse!
	# 	end
	# end



input = "   word1  word2" 

print "\n#{reverse_ordering_of_words(input)}\n"
# word2  word1   

# def reverse_ordering_of_words(s)
# 	split_words = s.split(/ /)

# 	output = []
# 	j = split_words.length

# 	(0..split_words.length).each do |i|
# 		output[i] = split_words[j]
# 		j = j - 1
# 	end

# 	returnval = output.join(' ')
# 	return returnval
# end