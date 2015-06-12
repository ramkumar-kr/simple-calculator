require 'spec_helper'

describe Command do 
	it 'Should return value as 10 for command object initialized with 10' do
    command_object = Command.new(10)
    expect(command_object.value).to eql(10)
  end
end