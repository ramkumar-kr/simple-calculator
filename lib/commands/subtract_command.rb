# Calls subtract operation of calculator
class SubtractCommand < Command
	
	def execute(receiver, history)
		receiver.subtract(@value)
		receiver.add_to_history(self)
		receiver
	end
	
end