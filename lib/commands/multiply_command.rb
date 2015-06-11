# Calls multiply operation of calculator
class MultiplyCommand < Command
	
	def execute(receiver, history)
		receiver.multiply(@value)
		history.add(self)
		receiver
	end
	
end