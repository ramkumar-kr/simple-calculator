# Calls negation operation of calculator
class NegateCommand < Command
	
	def execute(receiver)
		receiver.negate
		receiver.add_to_history(self)
		receiver
	end
	
end