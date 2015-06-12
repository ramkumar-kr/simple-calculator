# Repeats sequence of commands retrieved from history
class RepeatCommand < Command
	
	def execute(receiver)
		unwanted_history = CommandHistory.new
		receiver.retrieve_from_history(@value)
		receiver
	end
	
end