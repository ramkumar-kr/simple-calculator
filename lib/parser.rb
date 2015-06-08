# convert input string to arithmetic operation 
class Parser
	ALLOWED_METHODS = ["add"]
	def initialize
		@calculator = Calculator.new
	end

	def parse(string)
		command_array = string.split
		@calculator.send(command_array[0],command_array[1]) if ALLOWED_METHODS.include?(command_array[0])
	end
end