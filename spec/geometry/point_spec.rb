require 'spec_helper'

describe "Distance between two points" do
	it "length of the line with end points values (2,3) and (5,7) is 5" do
		point_1 = Geometry::Point.new(2, 3)
		point_2 = Geometry::Point.new(5, 7)
		expect(point_1.distance(point_2)).to eq(5)
	end
end

describe "Point equality" do
	it "Point (1,1) is same as point as (1,1)" do
		point_1 = Geometry::Point.new(1, 1)
		point_2 = Geometry::Point.new(1, 1)
		expect(point_1).to eq(point_2)
	end

	it "Point (1,1) is same as point as (2,1)" do
		point_1 = Geometry::Point.new(1, 1)
		point_2 = Geometry::Point.new(2, 1)
		expect(point_1).to_not eq(point_2)
	end

end