require 'byebug'

def change(denominations, amount)
	denominations.sort!.reverse!
	coins, remaining_amount = [], amount
	output = change_assistant(denominations, coins, amount, 0)
	debugger
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

# coins = [100,50,25,10,5,1]
# coins = [5,1,8,9,2,5]
# coins = [4,22,14,1,18]
coins = [13,100,21,98,76,77,7,88,30,50,93,43,99,1]
value = 97

result = change coins, value
print "\n#{result}\n"
# returns [25, 10, 10, 1, 1, 1]
