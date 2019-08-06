require 'byebug'

# Count the number of times the word "Shakespeare" occurs in a file.

h = Hash.new

def count_word(target, in_file)
  word_count = 0
  file = File.open(in_file, "r")

  file.each_line do |line|
    line.split.each do |word|
      word_count += count_word_assistant(target, word, 0)
    end
    
  end
  return word_count
end

def count_word_assistant(target_word, word, counter)
  return 1 if counter == word.length
  i = counter
  if target_word[i] == word[i]
    count_word_assistant(target_word, word, counter + 1)
  else
    0
  end

end
print "\nShakespeare occurs #{count_word('Shakespeare', 'input_shakespeare.txt')} times.\n}"



# sort the hash by value, and then print it in this sorted order
# h.sort{|a,b| a[1]<=>b[1]}.each { |elem|
#   puts "\"#{elem[0]}\" has #{elem[1]} occurrences"
# }