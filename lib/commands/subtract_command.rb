# Calls subtract operation of calculator
class SubtractCommand < Command
	
	def execute(receiver)
		receiver.subtract(@value)
		receiver.add_to_history(self)
		receiver
	end
	
end