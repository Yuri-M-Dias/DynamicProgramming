# -*- coding: utf-8 -*-

def bestPriceForRodLength(valueTable, length)
	if(length <= 0)
		return 0
	end
	max = -1
	(0...length).each do |i|
		max = [max, valueTable[i] + bestPriceForRodLength(valueTable, length - (i + 1))].max
	end
	return max
end

valueTable = [2, 3, 7, 8, 9, 10, 13, 15, 17, 19]

puts "#{bestPriceForRodLength(valueTable, 4)}"
puts "#{bestPriceForRodLength(valueTable, 5)}"
puts "#{bestPriceForRodLength(valueTable, 6)}"
puts "#{bestPriceForRodLength(valueTable, 7)}"
puts "#{bestPriceForRodLength(valueTable, 8)}"
