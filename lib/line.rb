class Line
# JOB : Defines specification of a geometric line
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
end