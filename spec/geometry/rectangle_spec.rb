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

	it "Perimeter valid rectange check: length and breadth are not 0" do
		length = 1 + Random.rand(10)
		breadth = 1 + Random.rand(8)
		rectangle = Geometry::Rectangle.new(length, breadth)
		expect(rectangle.perimeter).to eq((length + breadth) * 2)
	end

	it "Area for valid rectange check: length and breadth are not 0" do
		length = 1 + Random.rand(10)
		breadth = 1 + Random.rand(8)
		rectangle = Geometry::Rectangle.new(length, breadth)
		expect(rectangle.area).to eq(length * breadth)
	end

	it "Valid rectangle area with two diagonal point" do
		point_1 = Geometry::Point.new(1, 1)
		point_2 = Geometry::Point.new(3, 3)
		rectangle = Geometry::Rectangle.new(point_1, point_2)
		expect(rectangle.perimeter_and_area).to eq({perimeter: 8, area: 4})
	end

end