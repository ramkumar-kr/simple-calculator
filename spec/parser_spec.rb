require 'spec_helper'

describe Parser do
	before(:each){@parser = Parser.new}
	context "Addition command" do
		it "should call add method of Calculator class when string passed is add 5" do
      expect_any_instance_of(Calculator).to receive(:add)
      @parser.parse("add 5")
		end
	end
	context "Subtraction command" do
		it "should call subtract method of Calculator class when string passed is subtract 7" do
      expect_any_instance_of(Calculator).to receive(:subtract)
      @parser.parse("subtract 7")
		end
	end

	context "Mutiply command" do
		it "should call multiplication method of Calculator class when string passed is multiply 4" do
      expect_any_instance_of(Calculator).to receive(:multiply)
      @parser.parse("multiply 4")
		end
	end

	context "Division command" do
		it "should call divide method of Calculator class when string passed is divide 2" do
      expect_any_instance_of(Calculator).to receive(:divide)
      @parser.parse("divide 2")
		end
	end

	context "Cancel command" do
		it "should call cancel method of Calculator class when string passed is cancel" do
      expect_any_instance_of(Calculator).to receive(:cancel)
      @parser.parse("cancel")
		end
	end

	context "Invalid command" do
		it "should return Invalid command message" do
			expect(@parser.parse("ksjdhkdsbfdjshvbs")).to eq("Invalid Command")
		end
	end

end