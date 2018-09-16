require 'byebug'


def qsort(arr, start, end_)
	return arr if start >= end_

	initial_pivot = choosePivot(start, end_)
  pivot_index = partition(arr, start, end_, initial_pivot)

  qsort(arr, start, pivot_index)
  qsort(arr, pivot_index + 1, end_)
end

def choosePivot(start, end_)
	start + (end_ - start)/2; 
end

def partition(arr, start, end_, pivot_index)
  pivot_value = arr[pivot_index]

	# Move pivot to end of array
  arr.swap!(pivot_index, end_ - 1)
  
  left_index = start
  # print "pivot is #{pivot_value}\n"
  (start...end_ -1).each do |right_index|
    if arr[right_index] <= pivot_value
      arr.swap!(right_index, left_index)
      left_index+= 1
    end
  end

  # arr[right_index ] > pivot_value
  arr.swap!(left_index, end_ - 1)
  return left_index
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


arr = [3,1,4,1,5,9,2,6,5,3]
# arr = [15, 7, 20, 7, 2, 31, 25, 64, 4, 7, 18, 55]

print "#{arr}\n"
qsort(arr,0,arr.count)





