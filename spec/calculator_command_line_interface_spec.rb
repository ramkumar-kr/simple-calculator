require 'spec_helper'

describe CalculatorCommandLineInterface do

	it "obtains input from user as add 20 and prints 20.0" do
		calc_cli = CalculatorCommandLineInterface.new
		allow(calc_cli).to receive(:gets).and_return("add 20")  
		expect { calc_cli.interact }.to output(/20.0/).to_stdout	
	end
  
end