# -*- coding: utf-8 -*-

def fibonnaci(number)
	if(number == 0 or number == 1)
		return number
	end
	return fibonnaci(number - 1) + fibonnaci(number - 2)
end

puts "#{fibonnaci(4)}"
puts "#{fibonnaci(5)}"
puts "#{fibonnaci(6)}"
puts "#{fibonnaci(7)}"
puts "#{fibonnaci(8)}"
puts "#{fibonnaci(9)}"
