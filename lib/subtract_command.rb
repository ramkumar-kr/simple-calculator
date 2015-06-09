# Calls subtract operation of calculator
class SubtractCommand < Command
	
	def execute(calculator)
		calculator.subtract(@value)
	end
	
end