# Calls multiply operation of calculator
class MultiplyCommand < Command
	
	def execute(receiver)
		receiver.multiply(@value)
		receiver.add_to_history(self)
		receiver
	end
	
end