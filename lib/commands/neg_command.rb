# Calls negation operation of calculator
class NegCommand < Command
	
	def execute(calculator)
		calculator.negate
	end
	
end