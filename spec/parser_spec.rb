require 'spec_helper'

describe Parser do
	before(:each){@parser = Parser.new}
	context "Addition command" do
		it "should call add method of Calculator class when string passed is add 5" do
      expect_any_instance_of(Calculator).to receive(:add)
      @parser.parse("add 5")
		end

	end

end