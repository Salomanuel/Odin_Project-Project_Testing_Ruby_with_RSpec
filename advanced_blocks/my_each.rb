class Array
	def my_each
		i = 0
		while i < self.size
			yield(self[i]) # puts "#{self[i]}!"
			i+=1
		end
		self
	end
end


('a'..'d').to_a.my_each { |num| puts "#{num}!"}
[1,2,3].my_each 				{ |num| puts "#{num}!"}

my_proc = Proc.new { |arg1| print "#{arg1}!"}