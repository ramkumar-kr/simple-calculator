# Calls cancel operation of calculator
class CancelCommand < Command
	
	def initialize
	end

	def execute(receiver, history)
		receiver.cancel
		history.add(self)
		receiver.value
	end
	
end