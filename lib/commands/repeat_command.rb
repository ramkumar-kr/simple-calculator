# Repeats sequence of commands retrieved from history
class RepeatCommand < Command
	
	def execute(receiver, history)
		unwanted_history = CommandHistory.new
		final_result = 0
		history_array = history.retrieve(@value)
		history_array.each do |command|
			final_result = command.execute(receiver, unwanted_history)
		end
		final_result
	end
	
end