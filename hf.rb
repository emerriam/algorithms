require 'byebug'

# Record off two channels at once
# List of program times to be recorded start/end times
# Return true if all can be recorded 

def scheduler(times_list)

	(100..1200).each do |time_of_day|
		recordings = 0

		# iterate through each time in times_list
		times_list.each do |program|
			recordings += catalog(program[0], program[1], time_of_day)
			if recordings > 2
				false
			end
		end
	end
	true
end

def catalog(start, end_time, time_of_day)
	if time_of_day > start && time_of_day < end_time
		 1
	else
		 0
	end
end

input = [ [100,300], [200,500], [700,800], [500,750] ]
print "\nCan it record another? #{scheduler(input)}\n"

# [200-300]
# [100-300]
# [100-400]

