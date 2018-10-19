require 'byebug'
def levenshteinDistance(strWord1, strWord2)
	length = 0
	debugger
	if strWord1.size > strWord2.size
		length = strWord1.size
		return find_distance(strWord1, strWord2, length)
	else
		length = strWord2.size
		return find_distance(strWord2, strWord1, length)
	end
end

def find_distance(word1, word2, length)
	word1 = word1.chars.sort.join
	word2 = word2.chars.sort.join
	instructions = []
	(0...length).each do |i|
		instructions.push(compare_letters(word1[i], word2[i]))
	end

	return instructions.reduce(0, :+)
end


# 0 - do 
def compare_letters(letter_a, letter_b)
	if letter_a == letter_b
		return 0 #don't do anything
	end

	if letter_b.nil?
		return 1 #insert letter_a into letter_b
	end

	if letter_a != letter_b
		return 1 # replace letter_a with letter_b
	end
end


strWord1 = "masilanidbny"
strWord2 = "zwujtimkexcgvxrgkp"

res = levenshteinDistance strWord1, strWord2
print "ANSWER: #{res}\n"
