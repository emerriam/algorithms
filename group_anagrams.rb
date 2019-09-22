# @param {String[]} strs
# @return {String[][]}
# Given an array of strings, group anagrams together.
def group_anagrams(strs)
    store = {}
    i = 0
    while i < strs.size
        sorted = strs[i].chars.sort.join
        if store[sorted] == nil # create it
        	store[sorted] = ["#{strs[i]}"]
        else # update it
        	store[sorted].push(strs[i])
        end
        i = i + 1
    end
    store.values.reverse.each do |key|
    end
end

puts "\n#{group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"])}"

# Input: ["eat", "tea", "tan", "ate", "nat", "bat"]
# Output:
# [
#   ["ate","eat","tea"],
#   ["nat","tan"],
#   ["bat"]
# ]