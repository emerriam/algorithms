# Build a pig latin generator. Pig latin is a language made by manipulating
# english words.
# Build a function that converts an english word
# to a pig latin word. The basic rules are:
# - If the word begins with a consonant, move the first letter to the end
# of the word and add “ay” to the end. Ex: hello → ellohay
# - if the word begins with a vowel (a,e,i,o,u), do not move the first
# letter to the end, simply add “ay” to the end. Ex: apple → appleay

# Build a function which accepts a sentence and returns a pig latin sentence.
# Ex: hello world → ellohay orldway


# Build a pig latin generator. Pig latin is a language made by manipulating
# english words.
# Build a function that converts an english word
# to a pig latin word. The basic rules are:
# - If the word begins with a consonant, move the first letter to the end
# of the word and add “ay” to the end. Ex: hello → ellohay
# - if the word begins with a vowel (a,e,i,o,u), do not move the first
# letter to the end, simply add “ay” to the end. Ex: apple → appleay

# Build a function which accepts a sentence and returns a pig latin sentence.
# Ex: hello world → ellohay orldway

# Pig latin words should maintain the case in the letters as submitted
# to the function (at the same index).
# Ex: Hello WoRld → Ellohay OrLldway

# Ex: The anteater hAs eaten some ants
# Ex: Hetay anteateray aShay eatenay omesay antsay

def pig_latinizer_sentence(sentence)
  sentence_array = sentence.split(' ')
  output_array = []
  sentence_array.each do |word|
    output_array.push(pig_latinizer(word))
  end
  output_array.join(' ')
end


def pig_latinizer(input_string)
  vowels = ["a","e","i","o","u"]

  first_letter = input_string[0]
  input_array = input_string.split('')
  return_val = ''

  upcases = find_upcase(input_string)

  if !vowels.include?(first_letter.downcase)
    first_letter = input_array.shift.downcase
    return_val = "#{input_array.join}#{first_letter}ay"
    return_val
  else
    return_val = "#{input_array.join}ay"
    return_val
  end

  return_val = return_val.downcase

  if upcases.length > 0
    upcases.each do |u|
      return_val[u] = return_val[u].upcase
    end
  end
  return return_val

end

def find_upcase(input_string)
  i = 0
  return_vals = []
  while i < input_string.length
    if !!/[[:upper:]]/.match(input_string[i])
      return_vals.push(i)
      input_string[i].downcase
    end
    i = i + 1
  end
  return return_vals
end



puts "\n"
puts pig_latinizer_sentence("The anteaTer hAs eaten some ants")
puts "\n"