# Calls divide operation of calculator
class DivideCommand < Command
	
	def execute(calculator)
		calculator.divide(@value)
	end
	
end