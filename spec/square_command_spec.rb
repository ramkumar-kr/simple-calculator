require "spec_helper"

describe SquareCommand do
	context "Sqaure" do
		it "should call square method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = SquareCommand.new
      history = CommandHistory.new
      expect_any_instance_of(Calculator).to receive(:square)
      command.execute(calculator, history)

    end
	end
end