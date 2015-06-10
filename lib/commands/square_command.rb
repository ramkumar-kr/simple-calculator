# Calls square operation of calculator
class SquareCommand < Command
	
	def execute(receiver, history)
		receiver.square
		history.add(self)
		receiver.value
	end
	
end