require 'byebug'
def countPathsMain(arr)
	x = 0
	y = 0

	return countPaths(arr, x, y)

end

def countPaths(arr, y, x)
	n = arr.length
	m = arr[0].length

	if x >= arr.length + 1
		return 0
	end
	if y >= arr.length + 1
		return 0
	end
	if x == arr.length || y == arr[0].length
		return 1
	end

	print "[#{x}, #{y}]\n"
	drawGridMain(arr, x, y)
	numRight = countPaths(arr, x+1, y)
	numDown = countPaths(arr, x, y+1)

	return numRight + numDown
end

def drawGridMain(arr, r, c)
	x = 0
	while x < arr.length
		print "|"
		y = 0
		while y < arr.length

			if x == r && y == c
				print "  *  |"
			else
				print " #{x},#{y} |"
			end
			y = y + 1
		end

		if y == arr[0].length
			print "\n"
		end
		x = x + 1
	end

end


arr = [["a","b", "c", "w"], ["d","e", "f", "x"], ["g","h", "i", "y"], ["j", "k", "l", "z"]]
puts "#{countPathsMain(arr)}\n\n"

