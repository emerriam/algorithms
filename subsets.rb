require 'byebug'


def generate_all_subsets(arry)
	output = []
	ssf = Array.new(arry.size)
	arr = arry.split('')
	x = printSubsets(arr, 0, ssf, 0, output)
	print x
	# return output
end

def printSubsets(arr, i, ssf, j, output)
	n = arr.size

	if i == n
		candidate = ssf.slice(0...j)
			output.push(candidate.join)
		return output
	end

	printSubsets(arr, i+1, ssf, j, output)
	ssf[j] = arr[i]
	printSubsets(arr, i+1, ssf, j+1, output)
	return output
end

# # Print all subsets in a given array
# 48 sets - 8 containing each letter?
# arr = ["t", "d", "c", "o"]
arr = "a"
# arr = ["a", "b", "c", "d"]
# arr = Array.new(4) { rand(1...900) }
# iterativeSubsets(arr)
generate_all_subsets(arr)


