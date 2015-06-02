class Geometry::Line
# JOB : Defines specification of a geometric line
	attr_accessor :point_1, :point_2
	alias_method :eql?, :==
	
	def initialize(point1, point2)
		@point_1 = point1
		@point_2 = point2
	end

	def length
		@point_1.distance(@point_2)
	end

	def ==(line)
		return !!line unless line.class == self.class
		# direct_compare_result = (@point2_x == line.point2_x && @point2_y == line.point2_y) &&
		#   (@point1_x == line.point1_x && @point1_y == line.point1_y)

		# cross_compare_result = (@point2_x == line.point1_x && @point2_y == line.point1_y) &&
		#   (@point1_x == line.point2_x && @point1_y == line.point2_y)

		# direct_compare_result || cross_compare_result

		(@point_2 == line.point_2 && @point_1 == line.point_1) || (@point_2 == line.point_1 && @point_1 == line.point_2)
	end
end