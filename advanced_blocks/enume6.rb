class Colors
	include Enumerable
	def each
		yield "red"
		yield "green"
		yield "blue"
	end
end

c = Colors.new
puts c.each {|i| puts i}
c.map { |i| i.reverse }
