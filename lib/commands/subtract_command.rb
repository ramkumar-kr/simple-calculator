# Calls subtract operation of calculator
class SubtractCommand < Command
	
	def execute(receiver, history)
		receiver.subtract(@value)
		history.add(self)
		receiver.value
	end
	
end