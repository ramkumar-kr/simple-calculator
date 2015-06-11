# Calls square root operation of calculator
class SquareRootCommand < Command
	
	def execute(receiver, history)
		receiver.square_root
		history.add(self)
		receiver
	end
	
end