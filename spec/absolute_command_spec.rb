require "spec_helper"

describe AbsoluteCommand do
	context "Absolute value" do
		it "should call absolute method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = AbsoluteCommand.new
      expect_any_instance_of(Calculator).to receive(:absolute)
      command.execute(calculator)

    end
	end
end