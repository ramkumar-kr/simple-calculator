# Calls negation operation of calculator
class NegateCommand < Command
	
	def execute(receiver, history)
		receiver.negate
		history.add(self)
		receiver.value
	end
	
end