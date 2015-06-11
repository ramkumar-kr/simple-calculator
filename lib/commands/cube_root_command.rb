# Calls cube root operation of calculator
class CubeRootCommand < Command
	
	def execute(receiver, history)
		receiver.cube_root
		history.add(self)
		receiver
	end
	
end