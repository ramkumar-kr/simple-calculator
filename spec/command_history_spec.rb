require "spec_helper"

describe CommandHistory do

	context 'Length' do
		it "should return length as 0 for a new object" do
			history = CommandHistory.new
			expect(history.length).to eq(0)
		end
	end
	context 'Retrieve' do
		it "should return last n commands in an array when retrieve method is called" do
			history = CommandHistory.new
			add_command1 = AddCommand.new(9)
			multiply_command1 = MultiplyCommand.new(3)
			add_command2 = AddCommand.new(6)
			add_command3 = AddCommand.new(4)
			history.add(add_command1)
			history.add(multiply_command1)
			history.add(add_command2)
			history.add(add_command3)
			expect(history.retrieve(2)).to eq([add_command2, add_command3])
		end
		
	end
end