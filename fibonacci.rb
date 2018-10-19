require 'byebug'

def fib_main(n)
	fibonacci(n)
end

def fibonacci(n)
	if n == 0 || n == 1
		return n
	end
	if n > 1
   	fibonacci( n - 1 ) + fibonacci( n - 2 )
 	end

end

print "#{fib_main(9)}\n"