# Write a program that outputs the string representation of numbers from 1 to n.

# But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. 
# For numbers which are multiples of both three and five output “FizzBuzz”.

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    out_array = []
    i = 1
    while i <= n
        out_text = ''
        if i % 3 == 0 || i % 5 == 0
            if i % 3 == 0
                out_text = "Fizz"
            end
            if i % 5 == 0
                out_text = out_text + "Buzz"
            end
        else
            out_text = i.to_s
        end
        out_array.push(out_text)
        i = i + 1
    end
    
    
    return out_array
end
puts "\n#{fizz_buzz(15)}" 

# [
#     "1",
#     "2",
#     "Fizz",
#     "4",
#     "Buzz",
#     "Fizz",
#     "7",
#     "8",
#     "Fizz",
#     "Buzz",
#     "11",
#     "Fizz",
#     "13",
#     "14",
#     "FizzBuzz"
# ]