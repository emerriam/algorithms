# Complete the solve function below.
require 'byebug'
require 'json'
require 'stringio'


# 20/24 tests pass .01 - .04 mb
def solve(nuts, bolts)
	output_array = []
	nuts.sort!
	bolts.sort!.reverse!
	nuts.each do |nut|
		match_ = search_array(nut, bolts)
	  if match_ != nil
	  	output_array.push(match_)
	  end
	end
	output_array
end

def search_array(nut, bolts)
	if bolts.count == 0
		return nil
	end

	if bolts.count == 1
		right = bolts
	else
		left, right = split_array(bolts)
	end

	return look_for_item(nut, left, right)
	return nil
end

def split_array(bolts)

	mid = (bolts.size / 2).round
	left = bolts.slice(0, mid)
  right = bolts.slice(mid, bolts.size - mid)

  return left, right
end

def look_for_item(nut, left, right)
	if right && right.count >= 1
		right.each do |bolt|
			if nut == bolt
				return "#{nut} #{bolt}"
			end
		end
	end

	if left && left.count >= 1
		left.each do |bolt|
			if nut == bolt
				return "#{nut} #{bolt}"
			end
		end
	end
	return nil
end

nuts = [4, 32, 5, 7, 9, 12, 43, 87]
bolts = [12, 32, 43, 7, 87, 9, 5, 4]
print solve(nuts, bolts)

#------------

# 20/24 tests pass .01 - .04 mb
# def solve(nuts, bolts)
# 	output_array = []
# 	nuts.each do |nut|
# 		match_ = search_array(nut, bolts)
# 	  if match_ != nil
# 	  	output_array.push(match_)
# 	  end
# 	end
# 	output_array
# end

# def search_array(nut, bolts)
# 	if bolts.count == 0
# 		return nil
# 	end
# 	if bolts.size >= 1
# 		left, right = split_array(bolts)
# 	else
# 		right = bolts
# 	end
# 	if right && right.count > 0
# 		right.each do |bolt|
# 			if nut == bolt
# 				return "#{nut} #{bolt}"
# 			end
# 		end
# 	end
# 	if left && left.count > 0
# 		left.each do |bolt|
# 			if nut == bolt
# 				return "#{nut} #{bolt}"
# 			end
# 		end
# 	end
# 	return nil
# end

# def split_array(bolts)
# 	mid = (bolts.size / 2).round
# 	left = bolts.slice(0, mid)
#   right = bolts.slice(mid, bolts.size - mid)
#   return left, right
# end

#------------


# 16/24 tests pass .04 - .15 mb
# def solve(nuts, bolts)
# 	nut_index = 0
# 	n = nuts.count
# 	output_array = []

# 	while nut_index < n
# 		mid = bolts[(n / 2).round]

# 		left = bolts.slice(0, mid)
# 	  right = bolts.slice(mid, bolts.count - mid)

# 	  if bolt_match = left.select {|e| e == nuts[nut_index]}.first
# 	  	output_array.push("#{nuts[nut_index]} #{bolt_match}")

# 		elsif bolt_match = right.select {|e| e == nuts[nut_index]}.first
# 			output_array.push("#{nuts[nut_index]} #{bolt_match}")
# 		end

# 		nut_index+= 1
# 	end
# 	return output_array
# end

#------------


# 4 4
# 32 32
# 5 5
# 7 7

# Each nut matches exactly one bolt
# Can see which one is bigger
# Can't sort all nuts or all bolts
# Match nuts to bolts

# Iterate through nuts, comparing each to each bolt
# If a nut matches a bolt, output the nut value and bolt value


# # Complete the solve function below.
# require 'byebug'

# 16/24 tests pass .04mb
# def solve(nuts, bolts)
# 	output_array = []
# 	nuts.each do |nut|
# 		bolts.each_with_index do |bolt|
# 			if nut == bolt
# 				output_array.push("#{nut} #{bolt}")
# 			end
# 		end
# 	end
# 	output_array
# end

# nuts = [4, 32, 5, 7]
# bolts = [32, 7, 5, 4]
# res = solve(nuts, bolts)


