require 'byebug'



def merger_first_into_second(arr1, arr2)

	arr2.each_with_index do |item, index|
		if item == 0
			half = arr2.length / 2
			arr2[index] = arr1[index-half]
		end

	end

	arr2.sort!

	return arr2

end

arr1 = [1, 3, 5,]
arr2 = [2, 4, 6, 0, 0, 0]

print merger_first_into_second(arr1, arr2)


# def dutch_flag_sort(input_string)
# 	arr = input_string.split('').sort!.reverse!
# 	output = arr.join("")
# 	return output
# end

# arr = "GBGGRBRG"
# print solve(arr)