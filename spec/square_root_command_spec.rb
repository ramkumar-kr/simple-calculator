require "spec_helper"

describe SquareRootCommand do
	context "Sqaure root" do
		it "should call Sqaure root method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = SquareRootCommand.new
      history = CommandHistory.new
      expect_any_instance_of(Calculator).to receive(:square_root)
      command.execute(calculator, history)

    end
	end
end