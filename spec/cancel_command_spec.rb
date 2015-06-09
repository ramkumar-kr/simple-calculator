require "spec_helper"

describe CancelCommand do
	context "Cancel" do
		it "should call cancel method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = CancelCommand.new
      expect_any_instance_of(Calculator).to receive(:cancel)
      command.execute(calculator)

    end
	end
end