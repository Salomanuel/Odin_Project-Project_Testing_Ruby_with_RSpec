module Enumerable
	def my_each
		return enum_for(:my_each) unless block_given?
		self.length.times { |i| yield(self[i]) } 
	end

	def my_each_with_index
		i = 0
		self.my_each do |j|
			yield j,i
			i += 1
		end
	end

	def keep_evens
		result_array = []
		for num in self
			result_array << num if num % 2 == 0
		end
		return result_array
	end

	def my_all?
		for j in self
			result = (yield(j) == true)
			break if (result 	 == false)
		end
		return result
	end


	def my_any?	#returns true if the block ever returns a value other than false or nil
		truism =  []
		for j in self
			truism << (yield(j) == true)
		end
		(truism.include?(true)) ? result ||= true : result ||= false
		return result
	end

	def my_none? #returns true if the block never returns true for all elements
		truism = []
		for j in self
			truism << (yield(j) == true)
		end
		(truism.include?(true)) ? result ||= false : result ||= true
		return result
	end

	def my_count(desired=1)	
		ary
		for j in self
			ary << j if 
	end
end

#Returns the number of elements.
#If an argument is given, counts the number of elements which equal obj using ==.
#If a block is given, counts the number of elements for which the block returns a true value.

include Enumerable


ary = [1, 2, 4, 2]
puts ary.my_count                  #=> 4
puts ary.my_count(2)               #=> 2
puts ary.my_count { |x| x%2 == 0 } #=> 3

#puts %w{ant bear cat}.my_none? { |word| word.length == 5 } #=> true
#puts %w{ant bear cat}.my_none? { |word| word.length >= 4 } #=> false
#puts %w{ant bear cat}.my_any? {|word| word.length >= 6}   #=> true

=begin
[1,2].my_each{ |j| puts "#{j} rocks" }
('a'..'d').to_a.my_each { |num| puts "#{num}!"}
[1,2,3].my_each 				{ |num| puts "#{num}!"}

[1,2].my_each_with_index{ |j,i| puts "#{j} rocks #{i}" }
puts (1..8).to_a.keep_evens.join(", ")

puts %w{ant bear cat}.my_all? {|word| word.length >= 4}   #=> true
puts %w{ant bear cat}.my_all? {|word| word.length >= 3}   #=> true
=end
