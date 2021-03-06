# Defines a 2-dimensional point 
class Geometry::Point 
	attr_accessor :x1, :y1
	alias_method :eql?, :==

	def initialize(x1,y1)
		@x1 = x1
		@y1 = y1
	end

	def distance(point_2)
		Math.sqrt((self.x1-point_2.x1)**2 + (self.y1-point_2.y1)**2)
	end

	def length_breadth_of_rectangle_from_diagonal_points(point_2)
		point_3 = Geometry::Point.new(@x1, point_2.y1)
		{
			length: point_3.distance(self),
			breadth: point_3.distance(point_2)
		}
	end

	def ==(point)
		@x1 == point.x1 && @y1 == point.y1
	end
end