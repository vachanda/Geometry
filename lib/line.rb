class Line
# JOB : Defines specification of a geometric line
	attr_accessor :point1_x, :point1_y, :point2_x, :point2_y
	def initialize(point1_x, point1_y, point2_x, point2_y)
		@point1_x = point1_x
		@point1_y = point1_y
		@point2_x = point2_x
		@point2_y = point2_y
	end

	def length
		x_comp = @point2_x - @point1_x
		y_comp = @point2_y - @point1_y
		s = x_comp * x_comp + y_comp * y_comp
		Math.sqrt(s)
	end

	def ==(line)
		return !!line unless line
		direct_compare_result = (@point2_x == line.point2_x && @point2_y == line.point2_y) &&
		  (@point1_x == line.point1_x && @point1_y == line.point1_y)

		cross_compare_result = (@point2_x == line.point1_x && @point2_y == line.point1_y) &&
		  (@point1_x == line.point2_x && @point1_y == line.point2_y)

		direct_compare_result || cross_compare_result
	end
end