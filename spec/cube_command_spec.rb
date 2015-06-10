require "spec_helper"

describe CubeCommand do
	context "Cube" do
		it "should call cube method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = CubeCommand.new
      history = CommandHistory.new
      expect_any_instance_of(Calculator).to receive(:cube)
      command.execute(calculator, history)

    end
	end
end