# Repeats sequence of commands retrieved from history
class RepeatCommand < Command
	attr_reader :value
	def initialize(number = 0)
		@value = number
	end

	def execute(receiver)
		unwanted_history = CommandHistory.new
		history_array = receiver.retrieve_from_history(@value)
		history_array.each do |command|
			command.execute(receiver)
		end
		receiver
	end
	
end