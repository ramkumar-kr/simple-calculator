# convert input string to arithmetic operation 
class Parser
	def initialize
		@calculator = Calculator.new
	end

	def parse(string)
		command_array = string.split
		command = command_array[0]
		operand = command_array[1].to_f
		case command
		when 'add'
			token = AddCommand.new(operand)
		when 'subtract'
			token = SubtractCommand.new(operand)
		when 'multiply'
			token = MultiplyCommand.new(operand)
		when 'divide'
			token = DivideCommand.new(operand)						
		when 'cancel'
			token = CancelCommand.new
		when 'exit'
			token = ExitCommand.new	
		else
			token = InvalidCommand.new
		end
	end
end