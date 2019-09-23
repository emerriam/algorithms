# Given a list of daily temperatures T, 
# return a list such that, for each day in the input, tells you how many days 
# you would have to wait until a warmer temperature. 
# If there is no future day for which this is possible, put 0 instead.

# For example, given the list of temperatures T = [73, 74, 75, 71, 69, 72, 76, 73], 
# your output should be [1, 1, 4, 2, 1, 1, 0, 0].
require 'byebug'

def daily_temperatures(t)
    wait = [0] * (t.length)
    debugger
    previous_index = [0]
    t.each_with_index do |temp, idx|
        next if idx == 0
        while !previous_index.empty? && temp > t[previous_index[-1]]
            wait[previous_index[-1]] = idx - previous_index[-1]
            previous_index.pop
        end 
        previous_index << idx
    end
    wait
end

# @param {Integer[]} t
# @return {Integer[]}
# def daily_temperatures(temps)
#     i = 0
#     output_array = []
#     while i < temps.size
#     	output_array.push(find_next_warm_day(temps, i))
#     	i = i + 1
#     end
#     return output_array
# end

# def find_next_warm_day(temps,i)
# 	today = temps[i]
# 	j = i
# 	while j < temps.size
# 		if temps[j] > today
# 			return j - i
# 		end
# 		j = j + 1
# 	end
# 	return 0
# end

puts "\n#{daily_temperatures([73, 74, 75, 71, 69, 72, 76, 73])}\n"
# [1, 1, 4, 2, 1, 1, 0, 0]

