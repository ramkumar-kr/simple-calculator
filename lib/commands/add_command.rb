# Calls add operation of calculator
class AddCommand < Command
	
	def execute(receiver)
		receiver.add(@value)
		receiver.add_to_history(self)
		receiver
	end
	
end