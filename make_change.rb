require 'byebug'
# Complete the makeChange function below.
def makeChange(value, intDenominations)
	target = value
	den_hash = {}
	debugger
	intDenominations.each do |d|
		den_hash[d] = 0
	end


	denoms = intDenominations.sort!.reverse!
	makeChangeAssistant(target, denoms, den_hash)
	print den_hash

end

def makeChangeAssistant(target, denoms, den_hash)
	return 1 if target == 0
	return 0 if target < 0
	count = 0

	denoms.each do |den|
		count = count + makeChangeAssistant(target - den, denoms, den_hash)
		den_hash[den] = count

	end
	return 1
end
value = 24
intDenominations = [1,3,5]
makeChange(value, intDenominations)
# 1,3
# 2,2