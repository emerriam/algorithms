# You are given an array of strings words and a string chars.
# A string is good if it can be formed by characters from chars (each character can only be used once).
# Return the sum of lengths of all good strings in words.

# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
	total_count = 0
	words.each do |word|
		count = parse_word(word, chars)
		total_count = total_count + count
	end    
	return total_count
end

def parse_word(word, chars)
	word_arr = word.split('')
	count = 0
	temp_chars = String.new(chars)
	while word_arr.size > 0
		char = word_arr.pop
		if temp_chars.include?(char)
			count = count + 1
		else
			return 0
		end
		temp_chars = remove_char_from_word(char, temp_chars) 
	end
	return count
end

def remove_char_from_word(char, word) 
	i = word.index(char)
	word[i] = ''
	return word
end
# puts "\n#{parse_word("hello", "welldonehoneyr")}\n"
# puts "\n#{count_characters(["cat","bt","hat","tree"], "atach")}\n"
# puts "\n#{count_characters(["hello","world","leetcode"], "welldonehoneyr")}\n"
puts "\n#{count_characters(["dyiclysmffuhibgfvapygkorkqllqlvokosagyelotobicwcmebnpznjbirzrzsrtzjxhsfpiwyfhzyonmuabtlwin","ndqeyhhcquplmznwslewjzuyfgklssvkqxmqjpwhrshycmvrb","ulrrbpspyudncdlbkxkrqpivfftrggemkpyjl","boygirdlggnh","xmqohbyqwagkjzpyawsydmdaattthmuvjbzwpyopyafphx","nulvimegcsiwvhwuiyednoxpugfeimnnyeoczuzxgxbqjvegcxeqnjbwnbvowastqhojepisusvsidhqmszbrnynkyop","hiefuovybkpgzygprmndrkyspoiyapdwkxebgsmodhzpx","juldqdzeskpffaoqcyyxiqqowsalqumddcufhouhrskozhlmobiwzxnhdkidr","lnnvsdcrvzfmrvurucrzlfyigcycffpiuoo","oxgaskztzroxuntiwlfyufddl","tfspedteabxatkaypitjfkhkkigdwdkctqbczcugripkgcyfezpuklfqfcsccboarbfbjfrkxp","qnagrpfzlyrouolqquytwnwnsqnmuzphne","eeilfdaookieawrrbvtnqfzcricvhpiv","sisvsjzyrbdsjcwwygdnxcjhzhsxhpceqz","yhouqhjevqxtecomahbwoptzlkyvjexhzcbccusbjjdgcfzlkoqwiwue","hwxxighzvceaplsycajkhynkhzkwkouszwaiuzqcleyflqrxgjsvlegvupzqijbornbfwpefhxekgpuvgiyeudhncv","cpwcjwgbcquirnsazumgjjcltitmeyfaudbnbqhflvecjsupjmgwfbjo","teyygdmmyadppuopvqdodaczob","qaeowuwqsqffvibrtxnjnzvzuuonrkwpysyxvkijemmpdmtnqxwekbpfzs","qqxpxpmemkldghbmbyxpkwgkaykaerhmwwjonrhcsubchs"], "usdruypficfbpfbivlrhutcgvyjenlxzeovdyjtgvvfdjzcmikjraspdfp")}\n"
# Input: words = ["hello","world","leetcode"], chars = "atach"
# Output: 6
# Explanation: 
# The strings that can be formed are "cat" and "hat" so the answer is 3 + 3 = 6.

# Input: words = ["hello","world","leetcode"], chars = "welldonehoneyr"
# Output: 10
# Explanation: 
# The strings that can be formed are "hello" and "world" so the answer is 5 + 5 = 10.
