require 'byebug'


def minimum_window(input_string, find_string)	
	temp_array = []
	i = 0
	while i < input_string.length
		j = 0

		while j < find_string.length
			if input_string[i] == input_string[j]
				temp_array.push(input_string[j])
			end
			j = j + 1

		end
		i = i + 1

	end
end




s = "AYZABOBECODXBBANC"
t = "ABC"
puts "\n#{minimum_window(s,t)}\n"

"BANC"