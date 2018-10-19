require 'byebug'
# Complete the makeChange function below.
def makeChange(c, intDenominations)
	target = c
	den_hash = {}
	intDenominations.each do |d|
		den_hash[d] = 0
	end


	denoms = intDenominations.sort!.reverse!
	makeChangeAssistant(target, denoms, den_hash)
	debugger
end

def makeChangeAssistant(target, denoms, den_hash)
	return 1 if target == 0
	return 0 if target < 0
	count = 0

	denoms.each do |den|
		count = count + makeChangeAssistant(target - 1, [den], den_hash)
	end
	
	return 1
end

c = 4
intDenominations = Array.new(3)
intDenominations = [1,2,3]
makeChange(c, intDenominations)
# 1,3
# 2,2