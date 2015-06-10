# Calls absolute operation of calculator
class AbsoluteCommand < Command
	
	def execute(reciever, history)
		reciever.absolute
		history.add(self)
		reciever.value
	end
	
end