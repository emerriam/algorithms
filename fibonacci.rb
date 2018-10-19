require 'byebug'
def fibonacci(n)
	if (0..1).include? n
		return n
	end

	if n > 1
   fibonacci( n - 1 ) + fibonacci( n - 2 )
 	end

end

print "#{fibonacci(9)}\n"