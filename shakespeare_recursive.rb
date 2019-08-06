require 'byebug'

# Count the number of times the worde Shakespear occurs in a file.
the_file='input.txt'
h = Hash.new
f = File.open(the_file, "r")


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

output = h.sort_by {|_key, value| value}.reverse

print output[0, 9]

print "\nShakespeare occurs #{h['SHAKESPEARE']} times.\n}"
x = 3



# sort the hash by value, and then print it in this sorted order
# h.sort{|a,b| a[1]<=>b[1]}.each { |elem|
#   puts "\"#{elem[0]}\" has #{elem[1]} occurrences"
# }