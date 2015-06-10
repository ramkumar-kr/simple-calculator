# Calls cube operation of calculator
class CubeCommand < Command
	
	def execute(reciever, history)
		reciever.cube
		history.add(self)
		reciever.value
	end
	
end