# Terminates the program
class ExitCommand < Command

	def execute(receiver, history)
		exit
	end
	
end