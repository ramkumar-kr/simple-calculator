require "spec_helper"

describe RepeatCommand do
  context 'Retrieval of History' do
  	pending "should call execute method of AddCommand class twice when execute method is called" do
  		calculator = Calculator.new
  		history = CommandHistory.new
      add_command1 = AddCommand.new(10)
      add_command2 = AddCommand.new(9)
      add_command3 = AddCommand.new(93)
      repeat_command = RepeatCommand.new(2)
      add_command1.execute(calculator, history)
      add_command2.execute(calculator, history)
      add_command2.execute(calculator, history)
      expect_any_instance_of(AddCommand).to receive(:execute).twice
      puts repeat_command.execute(calculator)
  	end
  end
end