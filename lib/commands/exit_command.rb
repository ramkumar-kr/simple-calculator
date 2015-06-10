# Terminates the program
class ExitCommand < Command

	def initialize
	
	end
	
	def execute(receiver, history)
		exit
	end
	
end