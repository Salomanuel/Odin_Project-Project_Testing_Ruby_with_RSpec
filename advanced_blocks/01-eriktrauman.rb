class Array
	def my_each
		i = 0
		while i < self.size
			yield(self[i]) if block_given?
			i+=1
		end
		self
	end

	def my_each_2(some_method)
		i = 0
		while i < self.size
			some_method.call(self[i])
			i+=1
		end
	end
	self
end

def print_stuff(word) print "#{word}!" end

[1,2,3].my_each_2(method(:print_stuff))

#(1..9).to_a.my_each { |j| print "#{j} blu \n"}
#(1..9).to_a.my_each(&my_proc)
#my_proc = Proc.new { |arg1| print "#{arg1}!"}