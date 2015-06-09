# Base class for all user commands
class Command
	attr_reader :value
	def initialize(number = 0)
		raise ArgumentError if number.class != Float
		@value = number
	end

	def ==(other_object)
		value == other_object.value
	end

	alias :eql? :==
	
	def hash
		value.hash
	end
end