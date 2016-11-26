module Enumerable
	def my_each
		puts 'inutile'
		yield 20
		puts 'inutilissimo'
	end
end


((1..9).to_a).my_each{|j| puts "#{j} culo"}

=begin
def parameters
	puts 'Here, have two random numbers.'
	yield rand(10), rand(50) if block_given?
	puts 'Now say thank you!'
end
parameters { |x,y| puts "#{x}, #{y}" } 
=end