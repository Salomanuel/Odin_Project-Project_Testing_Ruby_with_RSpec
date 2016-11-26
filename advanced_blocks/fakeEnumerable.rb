module FakeEnumerable
	def mapz
		out = []
		each { |e| out << yield(e) }
		out
	end

	def selectz
		return "culo"
	end

	def sort_byz
	end

	def reducez(*args)
	end
end

class Array
	include FakeEnumerable
end

puts ((1..3).to_a).mapz{ |j| j+1 }