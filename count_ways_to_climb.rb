require 'byebug'
FIXNUM_MAX = (2**(0.size * 8 -2) -1)

def countWaysToClimb(steps, n)
	amount = n
	dp_table = {}
	return count_ways(amount, steps, dp_table)
end

def count_ways(amount, steps, dp_table)
	if !dp_table[amount].nil?
		return dp_table[amount]
	end

	if amount == 0
		return 1
	end

	if amount < 0
		return 0
	end

	output_array = []

	(0...steps.count).each do |i|
		x = count_ways(amount - steps[i], steps, dp_table)
		output_array.push(x)
	end
	total = output_array.reduce(0, :+)
	dp_table[amount] = total
	return total

end


input = [2,2,1,2].reverse

steps_count = input.pop
steps = Array.new(steps_count)

steps_count.times do |i|
    steps_item = input.pop
    steps[i] = steps_item
end

n = input.pop
res = countWaysToClimb(steps, n)
print "ANSWER: #{res}\n"
# output should be 3
# Three ways to reach = [{2, 2, 3}, {2, 3, 2}, {3, 2, 2}]