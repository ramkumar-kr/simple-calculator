require 'spec_helper'

describe Command do 
	context	"Equality" do
  	it "should be equal to itself" do
  		command1 = Command.new(5)
  		expect(command1).to eq(command1)
  	end

  	it "should be equal to another object with same value" do 
  		command1 = Command.new(5)
  		command2 = Command.new(5)
  		expect(command1).to eq(command2)
  	end

  	it "should not be equal to another object with different values" do 
  		command1 = Command.new(5)
  		command2 = Command.new(6)
  		expect(command1).to_not eq(command2)
  	end
  end

  context "Hash" do 
 		it "should have the same hash for object with same value" do
 			command1 = Command.new(6)
 			command2 = Command.new(6)
 			expect(command1.hash).to eq(command2.hash)
 		end   	

  end

end