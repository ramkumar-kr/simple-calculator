# Calls cube root operation of calculator
class CubeRootCommand < Command
	
	def execute(receiver)
		receiver.cube_root
		receiver.add_to_history(self)
		receiver
	end
	
end