require 'spec_helper'

describe "Square functionality check" do	

	it "Square check: length = 1" do
		point = Geometry::Point.new(1, 1)
		length = 1
		square = Geometry::Square.new(point, length)
		expect(square.perimeter).to eq(4)
	end
	it "Square check: length = 1" do
		point = Geometry::Point.new(1, 1)
		length = 1
		square = Geometry::Square.new(point, length)
		expect(square.area).to eq(1)
	end
end