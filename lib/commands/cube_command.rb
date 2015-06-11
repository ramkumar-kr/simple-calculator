# Calls cube operation of calculator
class CubeCommand < Command
	
	def execute(receiver, history)
		receiver.cube
		history.add(self)
		receiver
	end
	
end