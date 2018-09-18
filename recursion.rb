require 'byebug'

def permuteMain(arr)

	i = 0

	print permute(arr, i)


end

def permute(arr, i)

	if i == arr.length - 1
		print arr
	end

	j = i
	while j < arr.length
		arr.swap!(i,j)
		permute(arr, i+1)
		arr.swap!(i,j)
		j = j + 1
	end


end

class Array
  def swap!(a,b)
    if self[a] != self[b]
      # print "#{self}\nswapping #{self[a]} and #{self[b]}\n"
    end
    self[a], self[b] = self[b], self[a]
    if self[a] != self[b]
      # print "#{self}\n\n"
    end
  end
end

arr = ["b","c","e", "f"]
# arr = ["b","c","e","f","g","h"]
print "#{arr}\n"
print "#{permuteMain(arr)}\n"




