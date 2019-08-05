	if count > 0
		if prev_char == input_char
			count = count + 1
		end
	else
		prev_char = input_char
output_string += input_char
		count = 0
	end

	if input_char == nil
		return input_char, output_string, counter, prev_char
	end
	
	return input_char, output_string, counter, prev_char

end


def main(input_string)
	prev_character = nil
	counter = 0
	output_string = ''
	x = 0

	while < input_string.length
		= encode(input_string[x], output_string, counter, prev_character)
		x = x + 1
end

	print output_string

end

main('aaaabbbccc')