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

puts "#{fibonacci(30)}"
# 30 => 832040
# 0.08 user 0.01 system 0:00.42 elapsed 22%CPU (0 avgtext + 0 avgdata 9428 max)
