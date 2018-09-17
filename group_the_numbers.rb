# Complete the solve function below.

# You are given an array of non-negative integers only. 
# Group them in-place into evens and odds in such a way that all evens appear on the
#  left side and all odds on the right side.

# Input Format:
# 	0 <= element <= 10^9
# 	Integer array
# 	Repeats possible.

# Output Format:
# 	Return the same integer array, with evens on left side and odds on the right side. 
# 	There is no need to preserve order within odds or within evens.

# Constraints:
# 	1 <= n <= 10^5
# 	Given array may contain duplicate numbers.
# 	Solutions with linear time complexity and constant auxiliary space is expected.

def solve(arr, start, end_)
	return arr if start >= end_

	pivot_index = partition(arr, start, end_ )

end

def partition(arr, start, end_)
	# Returns the location of the pivot 
	# Puts odd on one side evens on the other

end


class Array
  def swap!(a,b)
    if self[a] != self[b]
      print "#{self}\nswapping #{self[a]} and #{self[b]}\n"
    end
    self[a], self[b] = self[b], self[a]
    if self[a] != self[b]
      print "#{self}\n\n"
    end
  end
end



arr = Array.new(15) { rand(1...100) }
print solve(arr)

# [4, 2, 1, 3]

# Explanation:
# Order does not matter. Other valid solutions are
# [2, 4, 1, 3]
# [2, 4, 3, 1]
# [4, 2, 3, 1]

