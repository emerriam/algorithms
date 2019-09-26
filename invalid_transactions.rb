
# A transaction is possibly invalid if:

# the amount exceeds $1000, or;
# if it occurs within (and including) 60 minutes of another transaction with the same name in a different city.
# Each transaction string transactions[i] consists of comma separated values representing the name, 
# time (in minutes), amount, and city of the transaction.

# Given a list of transactions, return a list of transactions that are possibly invalid.  
# You may return the answer in any order.

# @param {String[]} transactions
# @return {String[]}
def invalid_transactions(transactions)
	last_transaction = ''
	invalids = []

	transactions.each do |transaction|
		transaction.split(',')
	  user = transactions[0]
	  time = transactions[1]
	  amount = transactions[2]
	  city = transactions[3]


	  if last_transaction != ''
	  	if last_transaction[1] - time < 60 && last_transaction[3] != city
	  		invalids.push(transaction)
	  	end
	  	

	  end



	  last_transaction = transaction



	end








end

puts "\n#{invalid_transactions(["alice,20,800,mtv","alice,50,1200,mtv"])}"