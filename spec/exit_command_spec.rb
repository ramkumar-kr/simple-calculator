require "spec_helper"

describe ExitCommand do
	context "exit" do
		it "should throe" do
      calculator = Calculator.new
      command = ExitCommand.new
      expect { command.execute }.to raise_error(SystemExit)

    end
	end
end