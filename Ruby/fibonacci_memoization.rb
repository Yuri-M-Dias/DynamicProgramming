# -*- coding: utf-8 -*-

@cache = []

def fibonnaci(number)
	if(number == 0 or number == 1)
		return number
	end
	puts "#{number} and #{@cache}"
	if(@cache.include? number)
		return @cache[number]
	end
	@cache[number] = fibonnaci(number - 1 ) + fibonnaci(number - 2)
	return @cache[number]
end

puts "4: #{fibonnaci(4)}"
puts "5: #{fibonnaci(5)}"
puts "6: #{fibonnaci(6)}"
puts "7: #{fibonnaci(7)}"
puts "8: #{fibonnaci(8)}"
puts "9: #{fibonnaci(9)}"
