require "spec_helper"

describe ExitCommand do
	context "exit" do
		it "should throe" do
      calculator = Calculator.new
      command = ExitCommand.new
      history = CommandHistory.new
      expect { command.execute(calculator) }.to raise_error(SystemExit)

    end
	end
end