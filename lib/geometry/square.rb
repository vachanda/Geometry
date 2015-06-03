class Geometry::Square
	# Job: Describes a 2D sqaure with the necessary parameters

	def initialize(point, length)
		@point = point
		@length = length
	end

	def perimeter
		4 * @length
	end

	def area
		@length ** 2
	end
end