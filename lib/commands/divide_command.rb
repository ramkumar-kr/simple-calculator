# Calls divide operation of calculator
class DivideCommand < Command
	
	def execute(receiver)
		receiver.divide(@value)
		receiver.add_to_history(self)
		receiver
	end
	
end