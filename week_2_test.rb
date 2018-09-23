
require 'byebug'


# Possible To Achieve Target Sum?
# Problem Statement:
# Given an array arr of size n and a target sum k.
# You have to determine, whether there exists a group of numbers (numbers need not to be contiguous and group can not be empty) in arr such that their sum equals to k.
# Input Format:
# There are two argument. First one is arr and second one is k.
# Output Format:
# Return a boolean denoting your answer.  
# Constraints:
# 1 <= n <= 18
# -10^17 <= arr[i], k <= 10^17
# Sample Test Cases:
# Sample Input 1:
# arr = [2 4 8]
# k = 6
# Sample Output 1:
# True
# Explanation 1:
# arr[0] + arr[1] = 6

# Sample Input 2:
# arr = [2 4 6]
# k = 5
# Sample Output 2:
# False
# Explanation 2:
# There does not exists any group such that its sum equals to k.


def check_if_sum_possible(arr, k)
	i = 0
	j = 0
	return check_sum(arr,i, j, k)

end

def check_sum(arr, i,j, k)
	# print "#{i}, #{j} indices\n"
	# print "#{arr[i]}, #{arr[j]} = #{arr[i] + arr[j]} add\n"


	if i == arr.size
		return false
	end

	if arr[i] + arr[j] == k
		return true
	end

	if j == arr.size - 1
		j = 0
		check_sum(arr, i+1, j, k)
	else
		check_sum(arr, i, j+1, k)
	end
end


arr = [2,4,8,6]
k = 3
print check_if_sum_possible(arr, k)