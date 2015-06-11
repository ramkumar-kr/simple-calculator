# Calls cube operation of calculator
class CubeCommand < Command
	
	def execute(receiver, history)
		receiver.cube
		receiver.add_to_history(self)
		receiver
	end
	
end