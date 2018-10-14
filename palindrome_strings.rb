require './my_trie'
require 'byebug'
# # Complete the join_words_to_make_a_palindrome function below.
# def join_words_to_make_a_palindrome(words)
# 	trie = Trie.new
# 	words.each do |word|
# 		trie.insert(word)
# 	end
# 	trie.prefix_match("ca")

# 	return trie.output

# end

# def is_palindrome(word)
#     word == word.reverse
# end


# words = ["car"]
# print join_words_to_make_a_palindrome(words)


# Working Solution
def join_words_to_make_a_palindrome(words)
    (0...words.length).each do |i|
    		(0...words.length).each do |j|

          if is_palindrome(words[i] + words[j])
              return [words[i], words[j]]
          end
        end
    end
    return nil

end

def is_palindrome(word)
    word == word.reverse
end

def wrap(words)

end


words = ["ant", "cat", "dog"]
print join_words_to_make_a_palindrome(words)
