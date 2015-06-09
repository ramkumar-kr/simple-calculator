require "spec_helper"

describe AddCommand do
	context "Addition" do
		it "should call add method of Calculator class when execute method is called" do
      calculator = Calculator.new
      add_command = AddCommand.new(10)
      expect_any_instance_of(Calculator).to receive(:add)
      add_command.execute(calculator)

    end
	end
end