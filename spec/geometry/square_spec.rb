require 'spec_helper'

describe "Square functionality check" do	

	it "Perimeter of the Square with length 1 and end point (1, 1) is 4" do
		point = Geometry::Point.new(1, 1)
		length = Random.rand(10) + 1
		square = Geometry::Square.new(point, length)
		expect(square.perimeter).to eq(4*length)
	end

	it "Area of the Square with length 1 and end point (1, 1) is 1" do
		point = Geometry::Point.new(1, 1)
		length = Random.rand(10) + 1
		square = Geometry::Square.new(point, length)
		expect(square.area).to eq(length ** 2)
	end

end