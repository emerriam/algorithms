require 'byebug'


def recursiveSubsets(arr)

	ssf = Array.new(arr.size)
	printSubsets(arr, 0, ssf, 0)

end

def printSubsets(arr, i, ssf, j)
	n = arr.size

	if i == n
		candidate = ssf.slice(0...j)
		total = candidate.inject(0){|sum,x| sum + x }
		if total > 1000
			print "#{candidate} #{total} 1000+\n"
		end
		return
	end

	printSubsets(arr, i+1, ssf, j)
	ssf[j] = arr[i]
	printSubsets(arr, i+1, ssf, j+1)
	return
end


def IterativeSubsets(arr)
	ssf = Array.new(arr.size)
	i = 1
	while i <= arr.length

		no_of_subsets = arr.length/i
		j = 0
		while j <= no_of_subsets do
			this_subset = arr.slice(j..(j + i - 1))
			print "#{this_subset} #{i}\n"
			j = j + 1
		end
		i = i + 1
	end

end


# # Print all subsets in a given array

def OldIterativeSubsets(arr)

	i = 1
	while i <= arr.length

		no_of_subsets = arr.length/i
		j = 0
		while j <= no_of_subsets do
			this_subset = arr.slice(j..(j + i - 1))
			print "#{this_subset} #{i}\n"
			j = j + 1
		end
		i = i + 1
	end

end


# 48 sets - 8 containing each letter?
# arr = ["t", "d", "c", "o"]
# arr = ["a", "b", "c", "d"]
arr = Array.new(4) { rand(1...900) }
# iterativeSubsets(arr)
recursiveSubsets(arr)

