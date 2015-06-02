class Geometry::Rectangle
# JOB: Defines a rectangle in 2 Dimensional geometry with functionalities
	attr_accessor :length, :breadth

	def initialize(length, breadth)
		unless length.class == Geometry::Point
			@length = length
			@breadth = breadth
		else
			length_breadth = length.length_breadth_of_rectangle_from_diagonal_points(breadth)
			@length = length_breadth[:length]
			@breadth = length_breadth[:breadth]
		end
	end

	# def initialize(point_1, point_2)
	# 	length_breadth = point_1.length_breadth_of_rectangle_from_diagonal_points(point_2)
	# 	@length = length_breadth[:length]
	# 	@breadth = length_breadth[:breadth]
	# end

	def perimeter_and_area 
	{
		perimeter: self.perimeter,
		area: self.area
	}
	end

	def perimeter
		return 0 if @length==0 || @breadth==0
		(@length + @breadth) * 2
	end

	def area
		return 0 if @length==0 || @breadth==0
		@length * @breadth
	end
end