# Base class for all user commands
class Command
	attr_reader :value

	def initialize(number = 0)
		@value = number
	end

end