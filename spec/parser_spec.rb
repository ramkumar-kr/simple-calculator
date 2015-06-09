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

	context "Absolute command" do
		it "should return abs command object when string passed is abs" do
      expect(@parser.parse("abs")).to be_instance_of(AbsCommand)
		end
	end

	context "Negate command" do
		it "should return neg command object when string passed is neg" do
      expect(@parser.parse("neg")).to be_instance_of(NegCommand)
		end
	end

	context "Square root command" do
		it "should return sqrt command object when string passed is sqrt" do
      expect(@parser.parse("sqrt")).to be_instance_of(SqrtCommand)
		end
	end

	context "Square command" do
		it "should return sqr command object when string passed is sqr" do
      expect(@parser.parse("sqr")).to be_instance_of(SqrCommand)
		end
	end

	context "Cube root command" do
		it "should return cubert command object when string passed is cubert" do
      expect(@parser.parse("cubert")).to be_instance_of(CubertCommand)
		end
	end

	context "Cube command" do
		it "should return cube command object when string passed is cube" do
      expect(@parser.parse("cube")).to be_instance_of(CubeCommand)
		end
	end	

end