require 'byebug'


def generate_all_subsets(arry)
	if !arry || arry.nil? || arry.empty?
		return false
	end
		output = []
		ssf = Array.new(arry.size)
		arr = arry.split('')
		return printSubsets(arr, 0, ssf, 0, output)
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


arry = nil
print generate_all_subsets(arry)
