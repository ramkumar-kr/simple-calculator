require "spec_helper"

describe InvalidCommand do
	context "Invalid Command" do
		it "should display Invalid command message when execute method is called" do
      command = InvalidCommand.new
      calculator = Calculator.new
      history = CommandHistory.new
      expect(command.execute(calculator, history)).to eq("Invalid command")

    end
	end
end