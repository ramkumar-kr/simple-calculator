# Calls cancel operation of calculator
class CancelCommand < Command
	
	def execute(receiver)
		receiver.cancel
		receiver.add_to_history(self)
		receiver
	end
	
end