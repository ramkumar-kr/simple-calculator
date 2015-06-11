# Calls add operation of calculator
class AddCommand < Command
	
	def execute(receiver, history)
		receiver.add(@value)
		history.add(self)
		receiver
	end
	
end