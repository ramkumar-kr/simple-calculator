# Performs simple arithmetic operations
class Calculator
	attr_reader :value
	
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

 	def absolute
 		@value = @value.abs
 	end

 	def negate
 		@value = -@value
 	end

 	def square_root
 		@value = Math.sqrt(@value)
 	end

 	def square
 		@value = @value * @value
 	end

 	def cube_root
 		 @value = Math.cbrt(@value)
 	end

 	def cube
 		@value = @value ** 3
 	end
end