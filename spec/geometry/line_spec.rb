require 'spec_helper'

describe "length of line" do	

	it "length of the line with end points values (2,3) and (5,7) is 5" do
		point_1 = Geometry::Point.new(2, 3)
		point_2 = Geometry::Point.new(5, 7)
		line = Geometry::Line.new(point_1, point_2)
		expect(line.length).to eq(5)
	end

	it "length of the line with end points values (1,1) and (1,1) is 0" do
		point_1 = Geometry::Point.new(1, 1)
		point_2 = Geometry::Point.new(1, 1)
		line = Geometry::Line.new(point_1, point_2)
		expect(line.length).to eq(0)
	end
end

describe "Test for same lines" do

	it "The line wtih end point (1,1), (3,4) is same with itself" do
		point_1 = Geometry::Point.new(1, 1)
		point_2 = Geometry::Point.new(3, 4)
		line1 = Geometry::Line.new(point_1, point_2)
		line2 = line1
		expect(line1).to eq(line2)
	end

	it "The line wtih end point (1,1), (3,4) is not same with nil" do
		point_1 = Geometry::Point.new(1, 1)
		point_2 = Geometry::Point.new(3, 4)
		line1 = Geometry::Line.new(point_1, point_2)
		line2 = nil
		expect(line1).to_not eq(line2)
	end

	it "The line wtih end point (1,1), (3,4) and (1,1), (3,4) are same" do
		point_1 = Geometry::Point.new(1, 1)
		point_2 = Geometry::Point.new(3, 4)
		line1 = Geometry::Line.new(point_1, point_2)
		line2 = Geometry::Line.new(point_1, point_2)
		expect(line1).to eq(line2)
	end

	it "The line wtih end point (1,1), (3,4) and (3,4), (1,1) are same" do
			point_1 = Geometry::Point.new(1, 1)
			point_2 = Geometry::Point.new(3, 4)
			line1 = Geometry::Line.new(point_1, point_2)
			line2 = Geometry::Line.new(point_2, point_1)
			expect(line1).to eq(line2)
		end

	it "The line wtih end point (1,1), (3,4) and (2,2), (4,5) are not same" do
		point_1 = Geometry::Point.new(1, 1)
		point_2 = Geometry::Point.new(3, 4)
		line1 = Geometry::Line.new(point_1, point_2)
		point_1 = Geometry::Point.new(2, 2)
		point_2 = Geometry::Point.new(4, 5)
		line2 = Geometry::Line.new(point_1, point_2)
		expect(line1).to_not eq(line2)
	end
end