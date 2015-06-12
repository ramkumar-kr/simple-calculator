require "spec_helper"

describe MultiplyCommand do
	context "Multiply" do
		it "should call multiply method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = MultiplyCommand.new(10)
      history = CommandHistory.new
      expect_any_instance_of(Calculator).to receive(:multiply)
      command.execute(calculator)

    end
	end
end