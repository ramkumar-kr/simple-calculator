# Performs simple arithmetic operations
class Calculator
	def initialize
		@value = 0
	end

	def operate
		cmd = gets.chomp
		cmd_arr = cmd.split
		puts add(cmd_arr[1].to_f)
	end

	def add(argument)
		@value = @value + argument
		@value
 	end
end