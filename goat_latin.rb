# If a word begins with a vowel (a, e, i, o, or u), append "ma" to the end of the word.
# For example, the word 'apple' becomes 'applema'.
 
# If a word begins with a consonant (i.e. not a vowel), remove the first letter and append it to the end, then add "ma".
# For example, the word "goat" becomes "oatgma".
 
# Add one letter 'a' to the end of each word per its word index in the sentence, starting with 1.
# For example, the first word gets "a" added to the end, the second word gets "aa" added to the end and so on.
# @param {String} s
# @return {String}
require 'byebug'
def to_goat_latin(s)
	output = []
	words = s.split(' ')
	words.each_with_index do |word, i|
		word = word_to_goat_latin(word)
		(i+1).times {word = word + "a" }
		output.push(word)
	end
	return output.join(' ').to_s

end

def word_to_goat_latin(word)
    vowels = ["a","e","i","o","u", "A", "E", "I", "O", "U"]
    if vowels.include?(word[0])
        word = word + "ma"
    else
    	word = word + word[0] + "ma"
    	word[0] = ''
    end
    return word
end

puts to_goat_latin("I speak Goat Latin")
#"Imaa peaksmaaa oatGmaaaa atinLmaaaaa"