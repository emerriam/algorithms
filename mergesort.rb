require 'byebug'

def merge_sort(arr)
  return arr if arr.length <= 1
 
  middle = arr.length / 2

  left = merge_sort(arr.take(middle))
  right = merge_sort(arr.drop(middle))

  merge(left, right)
end
 
def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end

p merge_sort([15, 20, 2, 3, 25, 3, 14, 19])    
