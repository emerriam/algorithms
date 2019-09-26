require 'byebug'
# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
    alphabet = []
    morse_alphabet = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    
    ('a'..'z').each {|letter| alphabet.push(letter) }
    output_hash = {}
    i = 0
    while i < words.size
        word = words[i]
        j = 0
        word_arr = []
        while j < word.size
            morse_index = alphabet.index(word[j])
            word_arr.push(morse_alphabet[morse_index])
            j = j +  1
        end
        word_str = word_arr.join('')
        output_hash[word_str] = word
        i = i  + 1
    end
    return output_hash.size
end

puts "\n#{unique_morse_representations(["gin", "zen", "gig", "msg"])}\n"