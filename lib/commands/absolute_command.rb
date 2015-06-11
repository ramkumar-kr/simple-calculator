# Calls absolute operation of calculator
class AbsoluteCommand < Command
	
	def execute(receiver, history)
		receiver.absolute
		history.add(self)
		receiver
	end
	
end