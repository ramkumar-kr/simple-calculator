# Calls add operation of calculator
class AddCommand < Command
	
	def execute(reciever, history)
		reciever.add(@value)
		history.add(self)
		reciever.value
	end
	
end