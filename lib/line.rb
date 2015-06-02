class Line
	
	def initialize (x1,y1,x2,y2)
		@x1 = x1
		@y1 = y1
		@x2 = x2
		@y2 = y2
	end

	def length
		x_comp = @x2 - @x1
		y_comp = @y2 - @y1
		s = x_comp * x_comp + y_comp * y_comp
		return Math.sqrt(s)
	end
end