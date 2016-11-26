class Array
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
end


#puts (1..8).to_a.keep_evens.join(", ")
puts %w{ant bear cat}.my_all? {|word| word.length >= 4}   #=> true
puts %w{ant bear cat}.my_all? {|word| word.length >= 3}   #=> true