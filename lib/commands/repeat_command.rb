# Repeats sequence of commands retrieved from history
class RepeatCommand < Command
	attr_reader :value
	def initialize(number = 0)
		@value = number
	end

	def execute(receiver)
		unwanted_reciever = Calculator.new(receiver.value)
		history_array = receiver.retrieve_from_history(@value)
		history_array.each do |command|
			command.execute(unwanted_reciever)
		end
		Calculator.new(unwanted_reciever.value, receiver.history)
	end
	
end