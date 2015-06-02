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

describe "Test for same lines" do

	it "The line wtih end point (1,1), (3,4) is same with itself" do
		line1 = Line.new(1,1,3,4)
		line2 = line1
		expect(line1).to eq(line2)
	end

	it "The line wtih end point (1,1), (3,4) is not same with nil" do
		line1 = Line.new(1,1,3,4)
		line2 = nil
		expect(line1).to_not eq(line2)
	end

	it "The line wtih end point (1,1), (3,4) and (1,1), (3,4) are same" do
		line1 = Line.new(1,1,3,4)
		line2 = Line.new(1,1,3,4)
		expect(line1).to eq(line2)
	end

	it "The line wtih end point (1,1), (3,4) and (3,4), (1,1) are same" do
			line1 = Line.new(1,1,3,4)
			line2 = Line.new(3,4,1,1)
			expect(line1).to eq(line2)
		end
	it "The line wtih end point (1,1), (3,4) and (2,2), (4,5) are not same" do
		line1 = Line.new(1,1,3,4)
		line2 = Line.new(2,2,4,5)
		expect(line1).to_not eq(line2)
	end
end