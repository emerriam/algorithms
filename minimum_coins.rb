require 'byebug'

def change(amount)
	denominations, coins, remaining_amount = [100,50,25,10,5,1], [], amount
	change_assistant(denominations, coins, amount, 0)
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

amount = 286
print "\n#{change(amount)}\n"

# returns [25, 10, 10, 1, 1, 1]