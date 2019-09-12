def find_integer(arr)
	arr_length = arr.shift
	arr.sort!
	arr.each do |val|
		return find_integer_in_array(arr, val)
	end
end

def find_integer_in_array(arr, target)

  i = 1
	while i < 4000000
		if !arr.include?(i)
			return i
		end
		i = i + 1
	end
end


arr = [4, 0, 1, 2, 3]
puts "\n#{find_integer(arr)}\n"