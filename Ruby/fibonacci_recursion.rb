# -*- coding: utf-8 -*-

def fibonacci(number)
	if(number == 0 or number == 1)
		return number
	end
	return fibonacci(number - 1) + fibonacci(number - 2)
end

puts "#{fibonacci(30)}"
# 30 => 832040
# 0.54 user 0.01 system 0:00.83 elapsed 66%CPU (0 avgtext+0 avgdata 9488 max)
