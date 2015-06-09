require "spec_helper"

describe CubertCommand do
	context "cube root" do
		it "should call cube root method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = CubertCommand.new
      expect_any_instance_of(Calculator).to receive(:cube_root)
      command.execute(calculator)

    end
	end
end