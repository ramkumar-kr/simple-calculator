require 'spec_helper'

describe Calculator do
	before(:each)  {@calculator = Calculator.new }
	context 'Addition' do
		it "should return 6 when 6 is asked to be added" do
			expect(@calculator.add(6)).to eq(6.0)
		end

		it "should return 11 when 5 is added after 6 is added" do
			@calculator.add(6)
			expect(@calculator.add(5)).to eq(11.0)
		end
	end
	
	context 'Subtraction' do
		it "should return -4 when 4 is subtracted" do
			expect(@calculator.subtract(4)).to eq(-4)
		end

		it "should return 2 when -6 is subtracted from -4" do
			@calculator.add(-4)
			expect(@calculator.subtract(-6)).to eq(2)
		end
	end

	context 'Multiplication' do
		it "should return 0 when 4 is multiplied" do
			expect(@calculator.multiply(4)).to eq(0)
		end

		it "should return 6 when 2 is added and 3 is multiplied" do
			@calculator.add(2)
			expect(@calculator.multiply(3)).to eq(6)
		end
	end

	context 'Division' do
		it "should return 0 when divided by 4" do
			expect(@calculator.divide(4)).to eq(0)
		end

		it "should return 3 when 6 is added and result is then divided by 2" do
			@calculator.add(6)
			expect(@calculator.divide(2)).to eq(3)
		end

		it "should raise ZeroDivisionError when divided by zero" do
			expect{ @calculator.divide(0) }.to raise_error(ZeroDivisionError)
		end
	end

	context 'Cancel' do
		it "should return 0" do
			expect(@calculator.cancel).to eq(0)
		end
	end
end