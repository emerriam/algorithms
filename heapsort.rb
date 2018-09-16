require 'byebug'


class Array
  def heapsort
    self.dup.heapsort!
  end
 
  def swap!(a,b)
    if self[a] != self[b]
      print "swapping #{self[a]} and #{self[b]}\n"
    end
    self[a], self[b] = self[b], self[a]
    if self[a] != self[b]
      print "#{self}\n\n"
    end
  end

  def heapsort!
      heapify
      print "#{self} HEAPIFIED\n"
      end_ = count - 1
      while end_ > 0 do
         swap!(end_, 0)
         end_ = end_ -1
         sift_down(0, end_)
      end
    self
  end
 
  def sift_down(start, end_)
   root = start

   # While there is at least one child
   while (root * 2) + 1 <= end_ do
      child = root * 2 + 1

      if (child + 1) <= end_ && self[child] < self[child + 1]
         child = child + 1
      end

      if self[root] < self[child]
         swap!(root, child)
         root = child
      else
         return
      end
   end
  end

  def heapify
      start = (count - 2) / 2
      while start >= 0 do
         sift_down(start, count - 1)
         start = start - 1
      end  
   end 
end

arr = [15, 20, 5, 2, 31, 44, 64, 4, 7, 18, 55]
print "#{arr}\n"
arr.heapsort!
print "#{arr} SORTED!\n"

