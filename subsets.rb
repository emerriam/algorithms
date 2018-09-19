require 'byebug'



# Print all subsets in a given array
def parseSubsets(arr)
	i = 1
	while i <= arr.length
		no_of_subsets = arr.length/i
		j = 0
		while j <= no_of_subsets do
			this_subset = arr.slice(j..(j + i - 2))
			print "#{this_subset} #{i}\n" if this_subset.length > 0
			j = j + 1
		end
		i = i + 1
	end

end

arr = ["t", "b", "c", "o"]

parseSubsets(arr)