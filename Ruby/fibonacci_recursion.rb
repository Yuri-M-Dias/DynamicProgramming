# -*- coding: utf-8 -*-

def fibonacci(number)
	if(number == 0 or number == 1)
		return number
	end
	return fibonacci(number - 1) + fibonacci(number - 2)
end

puts "#{fibonacci(4)}"
puts "#{fibonacci(5)}"
puts "#{fibonacci(6)}"
puts "#{fibonacci(7)}"
puts "#{fibonacci(8)}"
puts "#{fibonacci(9)}"
