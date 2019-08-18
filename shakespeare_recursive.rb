require 'byebug'

# Count the number of times the worde Shakespear occurs in a file.


the_file='input_shakespeare.txt'

index_hash = Hash.new
file = File.read(the_file).chomp.split

file.each do |word|
	if index_hash[word] == nil
		# CReate a new hash entry
		index_hash[word] = 1
	else
		# Update an existing entry
		index_hash[word] = index_hash[word] + 1
	end
end

# Lookup the word in the hash list and return result

# f.each_line { |line|

#   words = line.split

#   words.each_with_index { |w, index| 

#   	bigram = "#{words[index]} #{words[index + 1]}"
#   	bigram = bigram.upcase

#     if h.has_key?(bigram)
#       h[bigram] = h[bigram] + 1
#     else
#       h[bigram] = 1
#     end
#   }
# }

# output = h.sort_by {|_key, value| value}.reverse

# print output[0, 9]
debugger
print "\nShakespeare occurs #{h['SHAKESPEARE']} times.\n"
x = 3



# sort the hash by value, and then print it in this sorted order
# h.sort{|a,b| a[1]<=>b[1]}.each { |elem|
#   puts "\"#{elem[0]}\" has #{elem[1]} occurrences"
# }