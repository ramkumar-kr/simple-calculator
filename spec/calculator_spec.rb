require 'spec_helper'

describe Calculator do
	before(:all)  {@calculator = Calculator.new }
	context 'Addition' do
		it "should print result as 6 when user inputs add 6" do
			allow(@calculator).to receive(:gets).and_return("add 6")
			expect{ @calculator.operate }.to output(/6.0/).to_stdout
		end

		it "should print result as 11 when user inputs add 5" do
			allow(@calculator).to receive(:gets).and_return("add 5")
			expect{ @calculator.operate }.to output(/11.0/).to_stdout
		end
	end
	
end