# -*- coding: utf-8 -*-

def bestPriceForRodLength(valueTable, length)
	solution = []
	solution[0] = 0
	(1..length).each do |i|
		max = -1
		(0...i).each do |j|
			nextVal = valueTable[j] + solution[i - (j + 1)]
			max = [max, nextVal].max
			solution[i] = max
		end
	end
	return solution[length]
end

valueTable = [2, 3, 7, 8, 9, 10, 13, 15, 17, 19]

puts "#{bestPriceForRodLength(valueTable, 4)}"
puts "#{bestPriceForRodLength(valueTable, 5)}"
puts "#{bestPriceForRodLength(valueTable, 6)}"
puts "#{bestPriceForRodLength(valueTable, 7)}"
puts "#{bestPriceForRodLength(valueTable, 8)}"
