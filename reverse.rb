# @param {Integer} x
# @return {Integer}
def reverse(x)
    output = x.to_s.split('').reverse!.join.to_i
    
    if orig < 0 
        output = output - output - output
    end
    
    if output < -2**31 || output > 2**31 - 1
        return 0
    end
    return output
end

puts "\n#{reverse(123)}\n"