require 'byebug'

def change(list = [25, 10, 5, 1], amount)
 return nil if amount < 0
 return nil if amount != amount.floor

 parents = Array.new(amount + 1)
 parents[0] = 0
 worklist = [[0, 0]]

 while parents[amount].nil? && !worklist.empty? do
   base, starting_index = worklist.shift
   starting_index.upto(list.size - 1) do |index|
     coin = list[index]
     total = base + coin
     if total <= amount && parents[total].nil?
       parents[total] = base
       worklist << [total, index]
     end
   end
 end

 return nil if parents[amount].nil?
 
 result = []

 while amount > 0 do
   parent = parents[amount]
   result << amount - parent
   amount = parent
 end
 result.sort!.reverse!.count
end

coins = [13,100,21,98,76,77,7,88,30,50,93,43,99,1]
amount = 97

print change(coins, amount)
