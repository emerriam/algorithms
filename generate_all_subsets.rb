# Given a set (in form of string s containing only distinct lowercase 
# letters ('a' - 'z')), you have to generate ALL possible subsets of it .

# empty set is always a subset of any set.
# whole set s should also be considered as its subset here.

require 'byebug'
def generate_all_subsets(input_array)
	if !input_array || input_array.nil? || input_array.empty?
		return false
	end
		output = []
		ssf = Array.new(input_array.size)
		input_array = input_array.split('')
		return printSubsets(input_array, 0, ssf, 0, output)
end


def printSubsets(input_array, i, ssf, j, output)
	if i == input_array.size
		candidate = ssf[(0...j)]
		output.push(candidate.join)
		return output
	end

	printSubsets(input_array, i+1, ssf, j, output)
	ssf[j] = input_array[i]
	printSubsets(input_array, i+1, ssf, j+1, output)
	return output
end


print "\n#{generate_all_subsets("xy")}\n"
# ["", "x", "y", "xy"]






