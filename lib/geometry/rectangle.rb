class Geometry::Rectangle
# JOB: Defines a rectangle in 2 Dimensional geometry with functionalities
	attr_accessor :length, :breadth

	def initialize(length, breadth)
		@length = length
		@breadth = breadth
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