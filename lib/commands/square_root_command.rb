# Calls square root operation of calculator
class SquareRootCommand < Command
	
	def execute(receiver)
		receiver.square_root
		receiver.add_to_history(self)
		receiver
	end
	
end