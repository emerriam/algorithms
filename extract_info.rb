# Complete the solve function below.
# The input data is stored in a file and consists of key-value pairs. 
# Compute, for each key, the number of values with that key and the value with the highest lexicographical sort order.

# You will be given one String array of size N containing KEYS and VALUES separated by space.

# Return a String array with an entry for each key. 
# Each entry should contain key, number of values corresponding to that key and value with the 
# highest lexicographical sort order in the given format.

# KEY:COUNT,MAX_VALUE

# Order of the output does not matter.
# Keys and values will contain small letters and numerics.

# Constraints:
# 1 <= N <= 10^4
# 1 <= Length(KEYS) <= 256
# 1 <= Length(VALUES) <= 800 

# KEY:COUNT,MAX_VALUE
require 'byebug'

def solve(arr)
	end_ = arr.length
	input_hash = {}

	arr.each_with_index do |entry, index|
		key, value = parse_entry(entry)

		if input_hash.has_key?(key)
			update_hash(input_hash, key, value)
		else
			input_hash[key] = []
			input_hash[key].push(value)
		end
	end

	return format_hash(input_hash)
end

def update_hash(hashy, current_key, current_value)
	existing_value = hashy[current_key]
	existing_value.push(current_value)
end

def parse_entry(entry)
	split = entry.split(' ')
	return split[0], split[1]
end

def format_hash(hashy)
	output_array = []
	hashy.each do |entry|
		# ["key1", ["abcd", "hello", "hello"]]
		values_count = entry[1].count
		top_value = entry[1].sort.last
		key = entry[0]
		output_array.push("#{key}:#{values_count},#{top_value}")
	end
	output_array

end

arr = [ "key1 abcd", "key2 zzz", "key1 hello", "key3 world", "key1 hello"]
print solve(arr)

# key1:3,hello
# key2:1,zzz
# key3:1,world

# arr = [ "mark zuckerberg", "tim cook", "mark twain"]

# tim:1,cook
# mark:2,zuckerberg