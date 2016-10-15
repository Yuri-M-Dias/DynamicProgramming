# -*- coding: utf-8 -*-

def bestPriceForRodLength(priceTable, rodLength)
	bestPrices = []
	bestPrices[0] = 0
	(1..rodLength).each do |i|
		max = -1
		(0...i).each do |j|
			nextVal = priceTable[j] + bestPrices[i - (j + 1)]
			max = [max, nextVal].max
			bestPrices[i] = max
		end
	end
	return bestPrices[rodLength]
end

priceTable = [2, 3, 7, 8, 9, 10, 13, 15, 17, 19]

puts "#{bestPriceForRodLength(priceTable, 4)}"
puts "#{bestPriceForRodLength(priceTable, 5)}"
puts "#{bestPriceForRodLength(priceTable, 6)}"
puts "#{bestPriceForRodLength(priceTable, 7)}"
puts "#{bestPriceForRodLength(priceTable, 8)}"
