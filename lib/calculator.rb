# Performs simple arithmetic operations
class Calculator
	def initialize
		@value = 0
	end

	def add(argument)
		@value = @value + argument
 	end

 	def subtract(argument)
		@value = @value - argument
 	end
 	def multiply(argument)
		@value = @value * argument
 	end

 	def divide(argument)
		@value = @value / argument
 	end
end