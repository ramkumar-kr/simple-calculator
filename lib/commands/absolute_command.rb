# Calls absolute operation of calculator
class AbsoluteCommand < Command
	
	def execute(receiver)
		receiver.absolute
		receiver.add_to_history(self)
		receiver
	end
	
end