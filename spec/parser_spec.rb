require 'spec_helper'

describe Parser do
	before(:each){@parser = Parser.new}
	context "Addition command" do
		it "should return add command object when string passed is add 5" do
      expect(@parser.parse("add 5")).to be_instance_of(AddCommand)
		end
	end
	context "Subtraction command" do
		it "should return subtract command object when string passed is subtract 7" do
      expect(@parser.parse("subtract 7")).to be_instance_of(SubtractCommand)
		end
	end

	context "Mutiply command" do
		it "should return multiply command object when string passed is multiply 4" do
			expect(@parser.parse("multiply 4")).to be_instance_of(MultiplyCommand)
		end
	end

	context "Division command" do
		it "should return divide command object when string passed is divide 2" do
			expect(@parser.parse("divide 2")).to be_instance_of(DivideCommand)
		end
	end

	context "Cancel command" do
		it "should return cancel command object of Calculator class when string passed is cancel" do
			expect(@parser.parse("cancel")).to be_instance_of(CancelCommand)
		end
	end

	context "Exit command" do
		it "should return exit command object when string passed is exit" do
			expect(@parser.parse("exit")).to be_instance_of(ExitCommand)
		end
	end

	context "Invalid command" do
		it "should return Invalid command object of Calculator when string passed is not valid" do
			expect(@parser.parse("asdfa")).to be_instance_of(InvalidCommand)
		end
	end

end