# Calls square operation of calculator
class SquareCommand < Command
	
	def execute(receiver)
		receiver.square
		receiver.add_to_history(self)
		receiver
	end
	
end