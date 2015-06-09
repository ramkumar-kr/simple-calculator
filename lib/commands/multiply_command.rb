# Calls multiply operation of calculator
class MultiplyCommand < Command
	
	def execute(calculator)
		calculator.multiply(@value)
	end
	
end