# Allows user to interact with Calculator using Standard Input/Output
class CalculatorCommandLineInterface

	def initialize
		@parser = Parser.new
		@calculator = Calculator.new
		@history = CommandHistory.new
		@input = ''
	end

	def start
		loop do
			print "\n>> "
			interact	
		end
	end

	def interact		
		@input = gets.chomp
		token =  @parser.parse(@input)
		begin
			@calculator = token.execute(@calculator)
			puts @calculator
		rescue Math::DomainError
			puts "Check your number dude!!! :@"
		end
	end
end