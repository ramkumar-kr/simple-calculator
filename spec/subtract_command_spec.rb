require "spec_helper"

describe SubtractCommand do
	context "Subtract" do
		it "should call subtract method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = SubtractCommand.new(10)
      expect_any_instance_of(Calculator).to receive(:subtract)
      command.execute(calculator)

    end
	end
end