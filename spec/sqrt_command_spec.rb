require "spec_helper"

describe SqrtCommand do
	context "Sqaure root" do
		it "should call Sqaure root method of Calculator class when execute method is called" do
      calculator = Calculator.new
      command = SqrtCommand.new
      expect_any_instance_of(Calculator).to receive(:square_root)
      command.execute(calculator)

    end
	end
end