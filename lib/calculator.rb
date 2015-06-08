# Performs simple arithmetic operations
class Calculator
	def initialize
		@value = 0
	end

	def add(operand)
		@value = @value + operand
 	end

 	def subtract(operand)
		@value = @value - operand
 	end

 	def multiply(operand)
		@value = @value * operand
 	end

 	def divide(operand)
		@value = @value / operand
 	end

 	def cancel(operand = nil)
 		@value = 0
 	end
end