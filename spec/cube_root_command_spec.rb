require "spec_helper"

describe CubeRootCommand do
	context "cube root" do
		it "should call cube root method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = CubeRootCommand.new
      history = CommandHistory.new
      expect_any_instance_of(Calculator).to receive(:cube_root)
      command.execute(calculator, history)

    end
	end
end