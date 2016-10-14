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

puts "#{fibonacci(30)}"
# 30 => 832040
# 0.04 user 0.01 system 0:00.19 elapsed 32%CPU (0 avgtext + 0 avgdata 9528 max)
