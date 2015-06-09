require "spec_helper"

describe NegateCommand do
	context "Negation value" do
		it "should call negate method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = NegateCommand.new
      expect_any_instance_of(Calculator).to receive(:negate)
      command.execute(calculator)

    end
	end
end