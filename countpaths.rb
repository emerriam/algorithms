require 'byebug'
def countPathsMain(arr)
	x = 0
	y = 0
	return countPaths(arr, x, y)

end

def countPaths(arr, x, y)
	if x >= arr.length + 1
		return 0
	end
	if y >= arr.length + 1
		return 0
	end
	if x == arr.length && y == arr[0].length
		return 1
	end

	print "[#{x}, #{y}]\n"
	numRight = countPaths(arr, x+1, y)
	numDown = countPaths(arr, x, y+1)
	# debugger
	return numRight + numDown


end

arr = [["a","b"], ["c","d"], ["e","f"], ["g","h"]]
print "Paths: #{countPathsMain(arr)}\n\n"