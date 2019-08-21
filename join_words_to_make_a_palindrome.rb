require 'byebug'
# Working Solution
# def join_words_to_make_a_palindrome(words)
#     (0...words.length).each do |i|
#     		(0...words.length).each do |j|

#     				if words[i] == "a" 
#     					debugger
#     				end

# 	        	if is_palindrome(words[i] + words[j])
# 	            return [words[i], words[j]]
# 	        	end

	        	
#         end
#     end
#     return  [ 'NOTFOUND', 'DNUOFTON' ]
# end

# def is_palindrome(word)
#     word == word.reverse
# end
# Working Solution
def join_words_to_make_a_palindrome(words)
	output_array = []

    (0...words.length).each do |i|
    		(0...words.length).each do |j|
	        	if is_palindrome(words[i] + words[j])
	            output_array.push [words[i], words[j]]
	        	end
        end
    end

    if output_array.length > 0
    	return output_array.last
    else
    	return  [ 'NOTFOUND', 'DNUOFTON' ]
    end
end

def is_palindrome(word)
    word == word.reverse
end

words = ["b", "bb", "bbb"]
puts "\n"
print join_words_to_make_a_palindrome(words)
puts "\n"