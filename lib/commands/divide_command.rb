# Calls divide operation of calculator
class DivideCommand < Command
	
	def execute(receiver, history)
		receiver.divide(@value)
		history.add(self)
		receiver.value
	end
	
end