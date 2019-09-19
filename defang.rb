require 'byebug'
# @param {String} address
# @return {String}
def defang_i_paddr(address)
    address = address.split('')
    address.each_with_index do |item, i|
        if item == '.'
            address[i] = '[.]'
        end
    end
    return address.join
end

puts "\n#{defang_i_paddr('1.1.1.1.1')}\n"