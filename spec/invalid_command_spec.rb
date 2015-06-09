require "spec_helper"

describe InvalidCommand do
	context "Invalid Command" do
		it "should display Invalid command message when execute method is called" do
      command = InvalidCommand.new
      calculator = Calculator.new
      expect(command.execute(calculator)).to eq("Invalid command")

    end
	end
end