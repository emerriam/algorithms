def find_all_arrangements(n)
	arr = []
	if n == 1
		arr[0] = 'q'
		return arr
	end
	if n == 3
		print "0 different arrangements possible. \n "
	end
end

find_all_arrangements(1)