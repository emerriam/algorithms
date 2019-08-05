require 'byebug'

input = [ 
	[1, nil],
	[2, 1],
	[3, 1],
	[4, 2],
	[5, 2],
	[8, 6],
	[6, 5],
	[7, 6],
	]

def pp_main(arr)
	emp_hash = arr.to_h
	arr.each do |employee|
		spaces = get_spaces_count(employee[0], emp_hash, 0)

		spaces.times do 
			print " "
		end
		print employee[0]
		print "\n"
	end
end

def get_spaces_count(employee, emp_hash, count)
	return count if emp_hash[employee] == nil

	employee = emp_hash[employee]
	count = count + 1
	get_spaces_count(employee, emp_hash, count)
end

print "\n"
pp_main(input)