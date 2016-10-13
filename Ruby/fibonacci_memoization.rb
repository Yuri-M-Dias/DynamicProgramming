# -*- coding: utf-8 -*-

@cache = {}

def fibonacci(number)
	if(number == 0 or number == 1)
		return number
	end
	if(@cache.include? number)
		return @cache[number]
	end
	@cache[number] = fibonacci(number - 1) + fibonacci(number - 2)
	return @cache[number]
end

puts "4: #{fibonacci(4)}"
puts "5: #{fibonacci(5)}"
puts "6: #{fibonacci(6)}"
puts "7: #{fibonacci(7)}"
puts "8: #{fibonacci(8)}"
puts "9: #{fibonacci(9)}"
