def sort_array(arr)  
	arr = arr.map {|elem| elem.bytes }
	arr = arr.map {|elem| elem = elem[0]  }
	arr.sort!
	arr = arr.map {|elem| elem = elem.chr}
	return arr.sort!
end


puts "\n#{sort_array(["a","z","i","#","&","l","c"])}"
# #
# &
# a
# c
# i
# l
# z