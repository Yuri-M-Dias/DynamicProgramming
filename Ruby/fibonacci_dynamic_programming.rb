# -*- coding: utf-8 -*-

def fibonacci(number)
	antepenultimateResult = 0
	previousResult = 1
	result = 0
	executionRange = (2..number)
	executionRange.each do
		result = previousResult + antepenultimateResult
		previousResult, antepenultimateResult = result, previousResult
	end
	return result
end

puts "4: #{fibonacci(4)}"
puts "5: #{fibonacci(5)}"
puts "6: #{fibonacci(6)}"
puts "7: #{fibonacci(7)}"
puts "8: #{fibonacci(8)}"
puts "9: #{fibonacci(9)}"
