require 'spec_helper'

describe "length of line" do	

	it "length of the line with end points values (2,3) and (5,7) is 5" do
		line = Line.new(2,3,5,7)
		expect(line.length).to eq(5)
	end

	it "length of the line with end points values (1,1) and (1,1) is 0" do
		line = Line.new(1,1,1,1)
		expect(line.length).to eq(0)
	end
end