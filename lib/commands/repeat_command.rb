# Repeats sequence of commands retrieved from history
class RepeatCommand < Command
	attr_reader :value
	def initialize(number = 0)
		@value = number
	end
	
	def execute(receiver)
		unwanted_history = CommandHistory.new
		receiver.retrieve_from_history(@value)
		receiver
	end
	
end