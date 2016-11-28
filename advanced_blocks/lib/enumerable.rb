module Enumerable
	def my_each(&block)
		i = 0
		while i < self.size
			yield(self[i])
			i+=1
		end
		return self
	end

	def my_each_with_index(&block)
		i = 0
		self.my_each do |x|
			yield x, i
			i+=1
		end
		return self
	end

	def my_map(&block)
		result = []
		my_each { |element| result << block.call(element) }
		result
	end

	def my_find(&block)
		result = nil
		found  = false
		my_each do |element|
			if block.call(element)
				result = element
				found  = true
				break
			end
		end
		found ? result : nil
	end
end