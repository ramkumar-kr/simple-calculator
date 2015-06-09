# Calls cancel operation of calculator
class CancelCommand < Command
	
	def initialize
	end

	def execute(calculator)
		calculator.cancel
	end
	
end