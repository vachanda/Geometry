require 'spec_helper'

describe "Rectangle functionality check" do	

	it "Invalid rectange check: length = 0" do
		length = 0
		breadth = 5
		rectangle = Geometry::Rectangle.new(length, breadth)
		expect(rectangle.perimeter).to eq(0)
	end

	it "Invalid rectange check: breadth = 0" do
		length = 5
		breadth = 0
		rectangle = Geometry::Rectangle.new(length, breadth)
		expect(rectangle.perimeter).to eq(0)
	end

	it "Invalid rectange check: length and breadth are 0" do
		length = 0
		breadth = 0
		rectangle = Geometry::Rectangle.new(length, breadth)
		expect(rectangle.perimeter).to eq(0)
	end
end