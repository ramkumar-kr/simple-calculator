# Calls add operation of calculator
class AddCommand < Command
	
	def execute(calculator)
		calculator.add(@value)
	end
	
end