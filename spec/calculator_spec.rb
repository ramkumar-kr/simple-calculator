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

	context 'to_s' do
		it "should return 10 when value in the calculator is 10" do
			@calculator.add(10)
			expect(@calculator.value).to eq(10)
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

	context 'Absolute' do
		it "should return 4 when absolute of -4 is asked" do
			@calculator.add(4)
			expect(@calculator.absolute).to eq(4)
		end

		it "should return 7 when absolute of 7 is asked" do
			@calculator.add(7)
			expect(@calculator.absolute).to eq(7)
		end
	end

	context 'Negate' do
		it "should return 4 when negation of -4 is asked" do
			@calculator.subtract(4)
			expect(@calculator.negate).to eq(4)
		end

		it "should return -7 when negation of 7 is asked" do
			@calculator.add(7)
			expect(@calculator.negate).to eq(-7)
		end
	end

	context 'Square root' do
		it "should return 2 when square_root of 4 is asked" do
			@calculator.add(4)
			expect(@calculator.square_root).to eq(2)
		end

		it "should return 1.7320508075688772 when square_root of 3 is asked" do
			@calculator.add(3)
			expect(@calculator.square_root).to eq(1.7320508075688772)
		end
	end

	context 'Square' do
		it "should return 9 when square of 3 is asked" do
			@calculator.add(3)
			expect(@calculator.square).to eq(9)
		end

		it "should return 9 when square of -3 is asked" do
			@calculator.subtract(3)
			expect(@calculator.square).to eq(9)
		end
	end

	context 'Cube root' do
		it "should return 2 when cube_root of 8 is asked" do
			@calculator.add(8)
			expect(@calculator.cube_root).to eq(2)
		end

		it "should return 3 when cube_root of 27 is asked" do
			@calculator.add(27)
			expect(@calculator.cube_root).to eq(3)
		end
	end

	context 'Cube' do
		it "should return 27 when cube of 3 is asked" do
			@calculator.add(3)
			expect(@calculator.cube).to eq(27)
		end

		it "should return -27 when cube of -3 is asked" do
			@calculator.subtract(3)
			expect(@calculator.cube).to eq(-27)
		end
	end

	context 'history' do
		it "should call add method of CommandHistory object when add_to_history method is called" do
			allow_any_instance_of(CommandHistory).to receive(:add)
			command_object = AddCommand.new(10)
			@calculator.add_to_history(command_object)
		end



		it "should call retrieve method of CommandHistory when retrieve_from_history method is called" do
			command_object = AddCommand.new(10)
			@calculator.add_to_history(command_object)
			@calculator.add_to_history(command_object)
			@calculator.add_to_history(command_object)
			expect(@calculator.retrieve_from_history(1)).to eq([command_object])
		end
	end

end