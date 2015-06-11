# Stores certain commands entered by user
class CommandHistory
	def initialize
		@command_history_array = []
	end

	def length
		@command_history_array.length		
	end

	def add(command)
		@command_history_array << command
	end

	def retrieve(number)
		@command_history_array[length - number..length - 1]
	end

end