require 'byebug'

def str_str(haystack, needle)
    if haystack.include?(needle)
        return haystack.index(needle)
    else
        return -1
    end
end



puts str_str("hello", "ll")

