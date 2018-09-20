require 'byebug'


def recursiveSubsets(arr)

	ssf = Array.new(arr.size)
	printSubsets(arr, 0, ssf, 0)

end

def printSubsets(arr, i, ssf, j)
	n = arr.size

	if i == n
		candidate = ssf.slice(0...j)
		print "#{candidate}\n"
		return
	end

	printSubsets(arr, i+1, ssf, j)
	ssf[j] = arr[i]
	printSubsets(arr, i+1, ssf, j+1)
	return
end

def iterativeSubset(arr)
	n = arr.size
	i = 0
	j = 0

	prefix = arr[0]

	
	
end

def iterativePrint

end
# # Print all subsets in a given array




# 48 sets - 8 containing each letter?
arr = ["t", "d", "c", "o"]
# arr = ["a", "b", "c", "d"]
# arr = Array.new(4) { rand(1...900) }
iterativeSubsets(arr)
# recursiveSubsets(arr)

