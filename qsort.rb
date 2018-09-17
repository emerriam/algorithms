
require 'byebug'


def qsort(arr, start, end_)
  return arr if start >= end_

  initial_pivot = choosePivot(start, end_)
  # initial_pivot = 0
  pivot_index = partition(arr, start, end_, initial_pivot)

  print "#{arr} PARTITIONED pivot_value #{arr[pivot_index]}\n"

  # print "#{arr} partitioned pivot_index: #{pivot_index} pivot_value: #{arr[pivot_index]}\n"

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

  arr.swap!(left_index, end_ - 1)
  return left_index
end

class Array

  def quick_sort
    return self if length <= 1
    pivot = self[0]
    less, greatereq = self[1..-1].partition { |x| x < pivot }
    print "#{less + [pivot] + greatereq} PARTITIONED pivot_value #{pivot}\n"
    less.quick_sort + [pivot] + greatereq.quick_sort
  end

  def swap!(a,b)
    if self[a] != self[b]
      # print "#{self}\nswapping #{self[a]} and #{self[b]}\n"
    end
    self[a], self[b] = self[b], self[a]
    if self[a] != self[b]
      # print "#{self}\n\n"
    end
  end
  def choosePivot(start, end_)
    start + (end_ - start)/2 - 1; 
  end
end

arr = Array.new(15) { rand(1...4) }
# arr = [3,5,8,5,10,2,1]
# arr = [15,20,5,2,31,44,64,4,7,18,55]
# arr = [15, 7, 20, 7, 2, 31, 25, 64, 4, 7, 18, 55]

print "#{arr} UNSORTED\n"
arr = arr.quick_sort

# arr_two = [15,20,5,2,31,44,64,4,7,18,55]
# qsort(arr,0,arr.count)
print "#{arr} SORTED\n"








