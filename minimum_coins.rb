require 'byebug'

def minimum_coins(denominations, amount)
	denominations.sort!.reverse!
	coins, remaining_amount = [], amount

	output = change_assistant(denominations, coins, amount, 0)
	return output.size
end

def change_assistant(denominations, coins, amount, indx)
	return coins if amount == 0

	if denominations[indx] <= amount
		amount = amount - denominations[indx]
		coins.push(denominations[indx])
		change_assistant(denominations, coins, amount, 0)
	else
		change_assistant(denominations, coins, amount, indx+1)
	end
end

input = [5,1,8,9,2,5,15]

n = input[0]

currency = Array.new(n)

currency = input[1, input.length - 2]

value = input.last

result = minimum_coins currency, value
print "\n#{result}\n"
# coins = [100,50,25,10,5,1]
# coins = [5,1,8,9,2,5] # value
# coins = [4,22,14,1,18]


# returns [25, 10, 10, 1, 1, 1]
